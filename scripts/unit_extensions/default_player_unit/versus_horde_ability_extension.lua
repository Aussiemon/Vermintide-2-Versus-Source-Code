-- chunkname: @scripts/unit_extensions/default_player_unit/versus_horde_ability_extension.lua

VersusHordeAbilityExtension = class(VersusHordeAbilityExtension)

local CLIENT_PAUSE_SYNC_DURATION = 2

VersusHordeAbilityExtension.init = function (self, extension_init_context, unit, extension_init_data)
	self.is_server = Managers.player.is_server
	self._horde_ability_system = Managers.state.entity:system("versus_horde_ability_system")
	self._unit = unit
	self.network_manager = Managers.state.network
	self._game = Managers.state.network:game()

	if self.is_server then
		self:create_ability_game_object()

		self._ability_charge = 0
	end

	self._audio_system = Managers.state.entity:system("audio_system")
	self._cooldown = self._horde_ability_system:cooldown()
	self._pause_sync_until = 0
end

VersusHordeAbilityExtension._activate = function (self, t)
	self._horde_ability_system:activate_dark_pact_horde_ability()

	self._pause_sync_until = t + CLIENT_PAUSE_SYNC_DURATION

	if self._unit and POSITION_LOOKUP[self._unit] then
		self._audio_system:play_audio_position_event("Play_versus_pactsworn_horde_ability", POSITION_LOOKUP[self._unit])
	end
end

VersusHordeAbilityExtension.extensions_ready = function (self, world, unit)
	self._input_extension = ScriptUnit.has_extension(unit, "input_system")
	self._ghost_mode_extension = ScriptUnit.extension(unit, "ghost_mode_system")
end

VersusHordeAbilityExtension.update = function (self, t)
	if t < self._pause_sync_until then
		return
	end

	if self:cooldown() > self:get_ability_charge(t) then
		return
	end

	local input_activated = self._input_extension and self._input_extension:get("versus_horde_ability")
	local is_in_ghost_mode = self._ghost_mode_extension:is_in_ghost_mode()

	if input_activated and not is_in_ghost_mode then
		self:_activate(t)
	end
end

VersusHordeAbilityExtension.destroy = function (self)
	if self.network_manager:game() and self.is_server then
		self.network_manager:destroy_game_object(self._ability_go_id)

		self._ability_go_id = nil
	end
end

VersusHordeAbilityExtension.create_ability_game_object = function (self)
	fassert(self.is_server, "Trying to create ability game object on a client")

	local unit = self._unit
	local go_id = self.network_manager:unit_game_object_id(unit)
	local game_object_data_table = {
		ability_charge = 0,
		go_type = NetworkLookup.go_types.dark_pact_horde_ability,
		unit_game_object_id = go_id,
	}
	local callback = callback(self, "cb_game_session_disconnect")
	local ability_object_id = self.network_manager:create_game_object("dark_pact_horde_ability", game_object_data_table, callback)

	self:set_ability_game_object_id(ability_object_id)
end

VersusHordeAbilityExtension.set_ability_game_object_id = function (self, id)
	self._ability_go_id = id
end

VersusHordeAbilityExtension.get_ability_charge = function (self, t)
	if self.is_server then
		return self._ability_charge
	end

	if t < self._pause_sync_until then
		return 0
	end

	if self._game and self._ability_go_id then
		local ability_charge = GameSession.game_object_field(self._game, self._ability_go_id, "ability_charge")

		return ability_charge
	end

	return 0
end

VersusHordeAbilityExtension.server_set_ability_charge = function (self, ability_charge)
	if self._game and self._ability_go_id then
		GameSession.set_game_object_field(self._game, self._ability_go_id, "ability_charge", ability_charge)
	end

	if self.is_server then
		self._ability_charge = ability_charge
	end
end

VersusHordeAbilityExtension.cooldown = function (self)
	return self._cooldown
end

VersusHordeAbilityExtension.cb_game_session_disconnect = function (self)
	return
end

VersusHordeAbilityExtension.unit = function (self)
	return self._unit
end
