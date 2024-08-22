-- chunkname: @scripts/entity_system/systems/versus/versus_horde_ability_system.lua

require("scripts/unit_extensions/default_player_unit/versus_horde_ability_extension")
require("scripts/unit_extensions/default_player_unit/versus_horde_ability_husk_extension")

local settings = require("scripts/settings/versus_horde_ability_settings")

VersusHordeAbilitySystem = class(VersusHordeAbilitySystem, ExtensionSystemBase)

local RPCS = {
	"rpc_activate_dark_pact_horde_ability",
	"rpc_client_outline_own_horde_units",
}
local EXTENSIONS = {
	"VersusHordeAbilityExtension",
	"VersusHordeAbilityHuskExtension",
}
local MAX_NUM_HORDE_UNITS_PER_PLAYER = 32
local BATCH_SYNC_INTERVAL = 1

VersusHordeAbilitySystem.init = function (self, entity_system_creation_context, system_name)
	VersusHordeAbilitySystem.super.init(self, entity_system_creation_context, system_name, EXTENSIONS)
	self:register_rpcs(entity_system_creation_context.network_event_delegate)

	if self.is_server then
		self._server_player_data = {}
		self._next_batch_sync = 0
		self._event_manager = Managers.state.event
		self._conflict_director = Managers.state.conflict

		self._event_manager:register(self, "new_player_unit", "on_player_unit_spawned")
		self._event_manager:register(self, "gm_event_round_started", "on_round_started")
		self._event_manager:register(self, "on_player_joined_party", "on_player_joined_party")
		self._event_manager:register(self, "on_player_left_party", "on_player_left_party")

		self._num_players_by_party = {
			0,
			0,
		}
	end

	self._extensions = {}
	self.unit_storage = entity_system_creation_context.unit_storage
end

VersusHordeAbilitySystem.destroy = function (self)
	self:unregister_rpcs()
end

VersusHordeAbilitySystem.register_rpcs = function (self, network_event_delegate)
	self._network_event_delegate = network_event_delegate

	network_event_delegate:register(self, unpack(RPCS))
end

VersusHordeAbilitySystem.unregister_rpcs = function (self)
	if self._network_event_delegate then
		self._network_event_delegate:unregister(self)

		self._network_event_delegate = nil
	end
end

VersusHordeAbilitySystem.update = function (self, context, t)
	if self.is_server then
		self:_server_update_ability_charges(context.dt)
		self:_server_batch_sync_client_horde_units(t)
	end

	for _, extension in pairs(self._extensions) do
		extension:update(t)
	end
end

VersusHordeAbilitySystem.on_remove_extension = function (self, unit, extension_name)
	self._extensions[unit] = nil

	VersusHordeAbilitySystem.super.on_remove_extension(self, unit, extension_name)
end

VersusHordeAbilitySystem.on_add_extension = function (self, world, unit, extension_name, extension_init_data)
	local extension = VersusHordeAbilitySystem.super.on_add_extension(self, world, unit, extension_name, extension_init_data)

	self._extensions[unit] = extension

	return extension
end

VersusHordeAbilitySystem.cooldown = function (self)
	return settings.cooldown
end

VersusHordeAbilitySystem.on_round_started = function (self)
	self._round_started = true
	self._dark_pact_party_id = Managers.state.side:get_side_from_name("dark_pact").party.party_id
end

VersusHordeAbilitySystem.activate_dark_pact_horde_ability = function (self)
	if self.is_server then
		local local_player_peer_id = Managers.player:local_player():network_id()

		self:server_spawn_horde(local_player_peer_id)
	else
		self.network_transmit:send_rpc_server("rpc_activate_dark_pact_horde_ability")
	end
end

VersusHordeAbilitySystem.rpc_client_outline_own_horde_units = function (self, channel_id, unit_list)
	for i = 1, #unit_list do
		local unit = self.unit_storage:unit(unit_list[i])

		if unit then
			local outline_extension = ScriptUnit.extension(unit, "outline_system")

			outline_extension:add_outline(OutlineSettingsVS.templates.horde_ability)
		end
	end
end

VersusHordeAbilitySystem.server_register_horde_unit = function (self, go_id, peer_id)
	local player_data = self._server_player_data[peer_id]

	player_data.ability_horde_units_to_sync[#player_data.ability_horde_units_to_sync + 1] = go_id
end

VersusHordeAbilitySystem._server_update_ability_charges = function (self, dt)
	if not self._round_started then
		return
	end

	local cooldown = settings.cooldown
	local recharge_increment

	for peer_id, data in pairs(self._server_player_data) do
		if data.ability_charge then
			recharge_increment = dt * self:_recharge_modifier(peer_id)
			data.ability_charge = math.clamp(data.ability_charge + recharge_increment, 0, cooldown)

			if data.extension then
				data.extension:server_set_ability_charge(math.floor(data.ability_charge))
			end
		end
	end
end

VersusHordeAbilitySystem.server_spawn_horde = function (self, peer_id)
	local conflict_director = Managers.state.conflict
	local side = Managers.state.side:get_side_from_name("dark_pact")
	local side_id = side.side_id
	local player_data = self._server_player_data[peer_id]

	if settings.cooldown > player_data.ability_charge then
		return
	end

	local horde_ability_composition = self:get_composition()
	local data = {
		override_composition_type = horde_ability_composition,
	}
	local optional_data = {
		horde_ability_caller_peer_id = peer_id,
	}
	local override_epicenter_pos = player_data.extension and POSITION_LOOKUP[player_data.extension:unit()] or nil

	conflict_director.horde_spawner:execute_ambush_horde(data, side_id, false, override_epicenter_pos, optional_data)

	player_data.ability_charge = 0

	local game_mode = Managers.state.game_mode and Managers.state.game_mode:game_mode()
	local player = Managers.player:player(peer_id, 1)

	if player then
		self:_activation_chat_box_message(player:name())
		game_mode:activated_ability_telemetry("versus_horde_ability", player)
	end
end

VersusHordeAbilitySystem.server_register_peer = function (self, peer_id)
	if not self._server_player_data[peer_id] then
		self._server_player_data[peer_id] = {
			ability_charge = 0,
			ability_horde_units_to_sync = {},
		}
	end
end

VersusHordeAbilitySystem.server_get_ability_charge = function (self, t, peer_id)
	if self._server_player_data[peer_id] then
		return self._server_player_data[peer_id].extension:get_ability_charge(t)
	end
end

VersusHordeAbilitySystem.server_ability_recharge_boost = function (self, peer_id, action, damage_source, damage_type)
	local player_data = self._server_player_data[peer_id]

	if not player_data then
		return
	end

	local actions = settings.recharge_boosts.actions
	local damage_sources = settings.recharge_boosts.damage_sources
	local recharge_value = actions[action] or damage_sources[damage_source] or damage_sources[damage_type]

	if recharge_value then
		recharge_value = recharge_value * self:_recharge_modifier(peer_id)

		local percentual_boost = settings.cooldown / 100 * recharge_value

		player_data.ability_charge = player_data.ability_charge + percentual_boost
	end
end

VersusHordeAbilitySystem.on_player_unit_spawned = function (self, player, unit, player_unique_id)
	local extension = self._extensions[unit]

	if not extension then
		return
	end

	local peer_id = player.peer_id
	local player_data = self._server_player_data[peer_id] or {}
	local ability_charge = player_data and player_data.ability_charge or 0

	player_data.player_unit = unit
	player_data.extension = self._extensions[unit]
	player_data.ability_charge = ability_charge
	self._server_player_data[peer_id] = player_data
end

VersusHordeAbilitySystem.rpc_activate_dark_pact_horde_ability = function (self, channel_id)
	local peer_id = CHANNEL_TO_PEER_ID[channel_id]

	self:server_spawn_horde(peer_id)
end

VersusHordeAbilitySystem._server_batch_sync_client_horde_units = function (self, t)
	if t < self._next_batch_sync then
		return
	end

	self._next_batch_sync = t + BATCH_SYNC_INTERVAL

	for peer_id, player_data in pairs(self._server_player_data) do
		local units_to_sync = player_data.ability_horde_units_to_sync

		if units_to_sync and not table.is_empty(units_to_sync) then
			local sync_array = Script.new_array(MAX_NUM_HORDE_UNITS_PER_PLAYER)

			for i = 1, #units_to_sync do
				sync_array[i] = units_to_sync[i]
			end

			table.clear(units_to_sync)
			self.network_transmit:send_rpc("rpc_client_outline_own_horde_units", peer_id, sync_array)
		end
	end
end

VersusHordeAbilitySystem.get_composition = function (self)
	local factions = ConflictDirectors[self._conflict_director.current_conflict_settings].factions
	local compositions = settings.compositions_per_faction
	local selected_composition = compositions.skaven

	if factions and not table.is_empty(factions) then
		local num_factions = #factions
		local start_index = math.random(1, num_factions)

		for i = 0, num_factions - 1 do
			local selected_index = math.index_wrapper(start_index + i, num_factions)
			local faction = factions[selected_index]

			if compositions[faction] then
				selected_composition = compositions[faction]

				break
			end
		end
	end

	return selected_composition
end

VersusHordeAbilitySystem.on_player_joined_party = function (self, peer_id, local_player_id, party_id, slot_id, is_bot)
	if is_bot then
		return
	end

	if self._num_players_by_party[party_id] then
		self._num_players_by_party[party_id] = self._num_players_by_party[party_id] + 1
	end
end

VersusHordeAbilitySystem.on_player_left_party = function (self, peer_id, local_player_id, party_id, slot_id)
	if self._num_players_by_party[party_id] then
		self._num_players_by_party[party_id] = self._num_players_by_party[party_id] - 1
	end
end

VersusHordeAbilitySystem._recharge_modifier = function (self)
	local party_id = self._dark_pact_party_id
	local other_party_id = math.index_wrapper(party_id + 1, #self._num_players_by_party)
	local team_size_difference = self._num_players_by_party[other_party_id] - self._num_players_by_party[party_id]
	local recharge_modifier = settings.team_size_difference_recharge_modifier[team_size_difference]

	return recharge_modifier or 1
end

VersusHordeAbilitySystem._activation_chat_box_message = function (self, player_name)
	if not player_name then
		return
	end

	local chat = Managers.chat

	if chat ~= nil and chat:has_channel(1) then
		local localize_parameters = false
		local pop_chat = true

		chat:send_system_chat_message(1, "vs_chat_message_horde_ability", player_name, localize_parameters, pop_chat)
	end
end
