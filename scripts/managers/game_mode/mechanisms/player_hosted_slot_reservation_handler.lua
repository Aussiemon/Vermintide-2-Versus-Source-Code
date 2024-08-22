-- chunkname: @scripts/managers/game_mode/mechanisms/player_hosted_slot_reservation_handler.lua

PlayerHostedSlotReservationHandler = class(PlayerHostedSlotReservationHandler)

PlayerHostedSlotReservationHandler.init = function (self, party_settings)
	self:update_slot_settings(party_settings)
end

PlayerHostedSlotReservationHandler.update_slot_settings = function (self, party_settings)
	self._max_party_slots = 0
	self._num_slots_total = 0
	self._peer_id_to_party_id = {}
	self._group_leaders = {}

	local old_reservations = self._reserved_peers or {}

	self._reserved_peers = {}

	for _, party_data in pairs(party_settings) do
		if party_data.game_participating then
			local party_id = party_data.party_id

			self._reserved_peers[party_id] = old_reservations[party_id] or {}

			local num_slots = party_data.num_slots

			self._num_slots_total = self._num_slots_total + num_slots

			if num_slots > self._max_party_slots then
				self._max_party_slots = num_slots
			end
		end
	end
end

PlayerHostedSlotReservationHandler.num_slots_total = function (self)
	return self._num_slots_total
end

PlayerHostedSlotReservationHandler.max_party_slots = function (self)
	return self._max_party_slots
end

PlayerHostedSlotReservationHandler.try_reserve_slots = function (self, group_leader_peer_id, peers_to_reserve, invitee)
	local reserved = false
	local selected_party_id

	if invitee then
		group_leader_peer_id = invitee
	end

	peers_to_reserve = self:_filter_already_reserved_peers(peers_to_reserve)

	if table.is_empty(peers_to_reserve) then
		reserved = true
		selected_party_id = self._peer_id_to_party_id[group_leader_peer_id]

		printf("[PlayerHostedSlotReservationHandler] Attempted to reserve peers (%s), but they were already in party %s", table.concat(peers_to_reserve, ", "), selected_party_id)

		return reserved, selected_party_id
	end

	local num_to_reserve = #peers_to_reserve
	local max_free_slots = 0

	for party_id in ipairs(self._reserved_peers) do
		local free_slots = self:_num_unreserved_slots(party_id)

		if num_to_reserve <= free_slots and max_free_slots < free_slots then
			selected_party_id = party_id
			max_free_slots = free_slots
		end
	end

	if selected_party_id then
		for _, peer_id in ipairs(peers_to_reserve) do
			self._peer_id_to_party_id[peer_id] = selected_party_id
		end

		table.append(self._reserved_peers[selected_party_id], peers_to_reserve)

		reserved = true

		if self._group_leaders[group_leader_peer_id] then
			table.merge(self._group_leaders[group_leader_peer_id], table.set(peers_to_reserve))
		else
			self._group_leaders[group_leader_peer_id] = table.set(peers_to_reserve)
		end
	else
		printf("[PlayerHostedSlotReservationHandler] Failed to reserve slot for peer %s.")
		table.dump(self._reserved_peers, "Reserved Peers", 2)
	end

	self:_update_reservations()

	return reserved, selected_party_id
end

PlayerHostedSlotReservationHandler._filter_already_reserved_peers = function (self, peers)
	local copy

	for i = #peers, 1, -1 do
		if self:has_reservation(peers[i]) then
			copy = copy or table.shallow_copy(peers, true)

			table.remove(copy, i)
		end
	end

	return copy or peers
end

PlayerHostedSlotReservationHandler._update_reservations = function (self)
	local parties = Managers.party:parties()
	local reserved_slots = 0
	local start_bit = 0
	local printable_value = ""

	for party_id, peers in ipairs(self._reserved_peers) do
		local num_slots = parties[party_id].num_slots
		local num_peers = #peers

		for i = 1, num_peers do
			reserved_slots = bit.bor(reserved_slots, bit.lshift(1, start_bit + (i - 1)))
			printable_value = printable_value .. "1"
		end

		for i = num_peers + 1, num_slots do
			printable_value = printable_value .. "0"
		end

		start_bit = start_bit + num_slots
	end

	print("[PlayerHostedSlotReservationHandler] updating reservations. slots:", printable_value, reserved_slots)

	local lobby = Managers.state.network:lobby()
	local lobby_data = lobby.lobby_data_table

	lobby_data.reserved_slots_mask = reserved_slots

	lobby:set_lobby_data(lobby_data)
end

PlayerHostedSlotReservationHandler.remove_peer_reservations = function (self, peer_id, force_remove_peers)
	local peers_to_remove = self._group_leaders[peer_id]

	if peers_to_remove then
		if not force_remove_peers then
			local lobby = Managers.state.network:lobby()
			local lobby_members = lobby:members()
			local members = lobby_members:get_members()

			for _, member_peer_id in ipairs(members) do
				if peer_id ~= member_peer_id then
					peers_to_remove[member_peer_id] = nil
				end
			end
		end

		for peer_id, _ in pairs(peers_to_remove) do
			self:_remove_peer_reservation(peer_id)
		end
	else
		self:_remove_peer_reservation(peer_id)
	end

	self:_update_reservations()
end

PlayerHostedSlotReservationHandler._remove_peer_reservation = function (self, peer_id)
	local peer_party_id = self._peer_id_to_party_id[peer_id]

	if not peer_party_id then
		Application.warning(string.format("[PlayerHostedSlotReservationHandler] No reserved slot was found for peer %q", peer_id))

		return
	else
		local peer_index = table.index_of(self._reserved_peers[peer_party_id], peer_id)

		if peer_index then
			table.remove(self._reserved_peers[peer_party_id], peer_index)
		else
			Crashify.print_exception("[PlayerHostedSlotReservationHandler]", "Tried removing peer %s but was not reserved to begin with", peer_id)
		end

		self._peer_id_to_party_id[peer_id] = nil

		if self._group_leaders[peer_id] then
			local next_leader = table.find_func(self._group_leaders[peer_id], function (other_peer)
				return other_peer ~= peer_id
			end)

			if next_leader then
				self._group_leaders[next_leader] = self._group_leaders[peer_id]
			end
		end

		self._group_leaders[peer_id] = nil
	end
end

PlayerHostedSlotReservationHandler.party_id = function (self, peer_id)
	local peer_party_id = self._peer_id_to_party_id[peer_id]

	return peer_party_id
end

PlayerHostedSlotReservationHandler.all_teams_have_members = function (self)
	local party_manager = Managers.party

	for party_id, peers in ipairs(self._reserved_peers) do
		if party_manager:is_game_participating(party_id) and table.is_empty(peers) then
			return false
		end
	end

	return true
end

PlayerHostedSlotReservationHandler.get_group_leaders = function (self)
	return table.keys(self._group_leaders)
end

PlayerHostedSlotReservationHandler.peers = function (self)
	return table.keys(self._peer_id_to_party_id)
end

PlayerHostedSlotReservationHandler.party_id_by_peer = function (self, peer_id)
	local _, party_id = Managers.party:get_party_from_player_id(peer_id, 1)

	if not party_id or party_id == 0 then
		party_id = self._peer_id_to_party_id[peer_id]
	end

	return party_id
end

PlayerHostedSlotReservationHandler.party_peers = function (self, party_id)
	return table.keys_if(self._peer_id_to_party_id, nil, function (_, peer_party_id)
		return party_id == peer_party_id
	end)
end

PlayerHostedSlotReservationHandler.player_joined_party = function (self, peer_id, local_player_id, party_id, slot_id, is_bot)
	if is_bot or party_id == 0 then
		return
	end

	local previous_party_id = self._peer_id_to_party_id[peer_id]
	local joined_party = Managers.party:get_party(party_id)

	if previous_party_id and not joined_party.game_participating then
		local remove_safe = true

		self:unreserve_slot(peer_id, nil, remove_safe)

		return
	end

	if not previous_party_id or previous_party_id == party_id then
		return
	end

	self:move_player(peer_id, party_id)
end

PlayerHostedSlotReservationHandler.move_player = function (self, peer_id, party_id)
	local unreserved_slots = self:_num_unreserved_slots(party_id)

	if unreserved_slots < 1 then
		return false
	end

	local previous_party_id = self._peer_id_to_party_id[peer_id]

	if not previous_party_id then
		return false, "Failed to find peer"
	end

	if previous_party_id == party_id then
		return true
	end

	local peer_index = table.index_of(self._reserved_peers[previous_party_id], peer_id)

	if peer_index then
		table.remove(self._reserved_peers[previous_party_id], peer_index)
	else
		Crashify.print_exception("[PlayerHostedSlotReservationHandler]", "Tried removing peer %s but was not reserved to begin with", peer_id)
	end

	table.insert(self._reserved_peers[party_id], peer_id)

	self._peer_id_to_party_id[peer_id] = party_id

	self:_update_reservations()

	return true
end

PlayerHostedSlotReservationHandler._num_unreserved_slots = function (self, party_id)
	local parties = Managers.party:parties()

	return parties[party_id].num_slots - #self._reserved_peers[party_id]
end

PlayerHostedSlotReservationHandler.remote_client_connecting = function (self, peer_id)
	self:try_reserve_slots(Network.peer_id(), {
		peer_id,
	}, peer_id)
end

PlayerHostedSlotReservationHandler.remote_client_disconnected = function (self, peer_id)
	self:remove_peer_reservations(peer_id)
end

PlayerHostedSlotReservationHandler.has_reservation = function (self, peer_id)
	return self._peer_id_to_party_id[peer_id]
end
