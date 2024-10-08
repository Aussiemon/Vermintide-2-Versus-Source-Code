﻿-- chunkname: @scripts/entity_system/systems/ai/ai_panic_system.lua

require("scripts/unit_extensions/human/ai_player_unit/ai_utils")

local extensions = {
	"AIPanicExtension",
	"AIFearExtension",
}

AIPanicSystem = class(AIPanicSystem, ExtensionSystemBase)

AIPanicSystem.init = function (self, context, system_name)
	local entity_manager = context.entity_manager

	entity_manager:register_system(self, system_name, extensions)

	self.entity_manager = entity_manager
	self.is_server = context.is_server
	self.world = context.world
	self.unit_storage = context.unit_storage
	self.nav_world = Managers.state.entity:system("ai_system"):nav_world()
	self.unit_extension_data = {}
	self.panic_zones = {}
	self.panic_units = {}
	self.fear_units = {}
	self.panic_zone_id = 1
	self.current_fear_unit_index = 1
	self.current_panic_unit_index = 1
end

AIPanicSystem.destroy = function (self)
	return
end

local dummy_input = {}

AIPanicSystem.on_add_extension = function (self, world, unit, extension_name, extension_init_data)
	local extension = {}

	ScriptUnit.set_extension(unit, "ai_panic_system", extension, dummy_input)

	self.unit_extension_data[unit] = extension

	if extension_name == "AIPanicExtension" then
		self.panic_units[#self.panic_units + 1] = unit
	end

	if extension_name == "AIFearExtension" then
		local fear_active_on_spawn = extension_init_data.fear_active_on_spawn
		local fear_radius = extension_init_data.fear_radius

		self.fear_units[#self.fear_units + 1] = unit
		extension.fear_radius = fear_radius

		if fear_active_on_spawn then
			self:activate_fear(unit)
		end
	end

	return extension
end

AIPanicSystem.on_remove_extension = function (self, unit, extension_name)
	local extension = self.unit_extension_data[unit]

	if extension_name == "AIPanicExtension" then
		local panic_units = self.panic_units
		local panic_units_n = #panic_units

		for i = 1, panic_units_n do
			local ai_unit = panic_units[i]

			if ai_unit == unit then
				panic_units[i] = panic_units[panic_units_n]
				panic_units[panic_units_n] = nil

				break
			end
		end
	end

	if extension_name == "AIFearExtension" then
		local fear_units = self.fear_units
		local fear_units_n = #fear_units

		for i = 1, fear_units_n do
			local ai_unit = fear_units[i]

			if ai_unit == unit then
				local extension = self.unit_extension_data[unit]
				local panic_zone = extension.panic_zone

				if panic_zone then
					self:deregister_panic_zone(panic_zone)
				end

				fear_units[i] = fear_units[fear_units_n]
				fear_units[fear_units_n] = nil

				break
			end
		end
	end

	self.unit_extension_data[unit] = nil

	ScriptUnit.remove_extension(unit, self.NAME)
end

AIPanicSystem.hot_join_sync = function (self, peer_id, player)
	return
end

AIPanicSystem.activate_fear = function (self, unit)
	local extension = self.unit_extension_data[unit]
	local position = POSITION_LOOKUP[unit]
	local fear_radius = extension.fear_radius
	local panic_zone = self:register_panic_zone(position, fear_radius)

	extension.panic_zone = panic_zone
	extension.active = true
end

AIPanicSystem.register_panic_zone = function (self, position, radius)
	local panic_zone = {
		position = Vector3Box(position),
		radius_squared = radius * radius,
		radius = radius,
	}
	local panic_zones = self.panic_zones
	local panic_zones_n = #panic_zones
	local i = panic_zones_n + 1

	panic_zones[i] = panic_zone

	return panic_zone
end

AIPanicSystem.deregister_panic_zone = function (self, panic_zone_to_remove)
	local panic_zones = self.panic_zones
	local panic_zones_n = #panic_zones

	for i = 1, panic_zones_n do
		local panic_zone = panic_zones[i]

		if panic_zone == panic_zone_to_remove then
			panic_zones[i] = panic_zones[panic_zones_n]
			panic_zones[panic_zones_n] = nil

			return
		end
	end

	assert("trying to deregister_panic_zone which hasnt been registered: %q", deregister_panic_zone)
end

AIPanicSystem.set_panic_zone_position = function (self, panic_zone, position)
	panic_zone.position:store(position)
end

AIPanicSystem.inside_panic_zone = function (self, position)
	local panic_zones = self.panic_zones
	local panic_zones_n = #panic_zones

	for i = 1, panic_zones_n do
		repeat
			local panic_zone = panic_zones[i]
			local panic_zone_position = panic_zone.position:unbox()
			local radius_squared = panic_zone.radius_squared
			local distance_squared = Vector3.distance_squared(position, panic_zone_position)

			if distance_squared <= radius_squared then
				return panic_zone
			end
		until true
	end

	return nil
end

local FEAR_UNITS_UPDATES_PER_FRAME = 1

AIPanicSystem.update_fear_units = function (self)
	local fear_units = self.fear_units
	local fear_units_n = #fear_units

	if fear_units_n < self.current_fear_unit_index then
		self.current_fear_unit_index = 1
	end

	local start_index = self.current_fear_unit_index
	local end_index = math.min(start_index + FEAR_UNITS_UPDATES_PER_FRAME - 1, fear_units_n)

	for i = start_index, end_index do
		repeat
			local unit = fear_units[i]
			local extension = self.unit_extension_data[unit]

			if not extension.active then
				break
			end

			local panic_zone = extension.panic_zone
			local position = POSITION_LOOKUP[unit]

			self:set_panic_zone_position(panic_zone, position)
		until true
	end

	self.current_fear_unit_index = end_index + 1
end

local PANIC_UNITS_UPDATES_PER_FRAME = 1

AIPanicSystem.update_panic_units = function (self)
	local panic_units = self.panic_units
	local panic_units_n = #panic_units

	if panic_units_n < self.current_panic_unit_index then
		self.current_panic_unit_index = 1
	end

	local start_index = self.current_panic_unit_index
	local end_index = math.min(start_index + PANIC_UNITS_UPDATES_PER_FRAME - 1, panic_units_n)

	for i = start_index, end_index do
		local unit = panic_units[i]
		local position = POSITION_LOOKUP[unit]
		local panic_zone = self:inside_panic_zone(position)
		local ai_extension = ScriptUnit.extension(unit, "ai_system")
		local blackboard = ai_extension:blackboard()

		blackboard.panic_zone = panic_zone
	end

	self.current_panic_unit_index = end_index + 1
end

AIPanicSystem.update = function (self, context, t, dt)
	self:update_fear_units()
	self:update_panic_units()

	if script_data.ai_debug_panic_zones then
		self:debug_draw_panic_zones()
	end
end

AIPanicSystem.debug_draw_panic_zones = function (self)
	local drawer = Managers.state.debug:drawer({
		mode = "immediate",
		name = "AIPanicSystem",
	})
	local panic_zones = self.panic_zones
	local panic_zone_n = #panic_zones

	for i = 1, panic_zone_n do
		local panic_zone = panic_zones[i]
		local radius = panic_zone.radius
		local position = panic_zone.position:unbox()

		drawer:sphere(position, radius, Colors.get("red"))
	end
end
