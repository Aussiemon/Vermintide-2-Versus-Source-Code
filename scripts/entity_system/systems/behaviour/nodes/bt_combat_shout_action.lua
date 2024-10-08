﻿-- chunkname: @scripts/entity_system/systems/behaviour/nodes/bt_combat_shout_action.lua

require("scripts/entity_system/systems/behaviour/nodes/bt_node")

BTCombatShoutAction = class(BTCombatShoutAction, BTNode)

BTCombatShoutAction.init = function (self, ...)
	BTCombatShoutAction.super.init(self, ...)
end

BTCombatShoutAction.name = "BTCombatShoutAction"

BTCombatShoutAction.enter = function (self, unit, blackboard, t)
	local action = self._tree_node.action_data

	blackboard.action = action
	blackboard.anim_cb_shout_finished = nil
	blackboard.active_node = BTCombatShoutAction

	local network_manager = Managers.state.network

	network_manager:anim_event(unit, action.shout_anim)

	local navigation_extension = blackboard.navigation_extension

	navigation_extension:set_enabled(false)

	local locomotion_extension = blackboard.locomotion_extension

	locomotion_extension:set_wanted_velocity(Vector3.zero())

	local rotation = LocomotionUtils.rotation_towards_unit_flat(unit, blackboard.target_unit)

	locomotion_extension:set_wanted_rotation(rotation)

	blackboard.spawn_to_running = nil
end

BTCombatShoutAction.leave = function (self, unit, blackboard, t, reason, destroy)
	local navigation_extension = blackboard.navigation_extension

	navigation_extension:set_enabled(true)

	blackboard.active_node = nil
end

BTCombatShoutAction.run = function (self, unit, blackboard, t, dt)
	local locomotion_extension = blackboard.locomotion_extension
	local rot = LocomotionUtils.rotation_towards_unit_flat(unit, blackboard.target_unit)

	locomotion_extension:set_wanted_rotation(rot)

	local have_slot = blackboard.have_slot == 1

	if blackboard.anim_cb_shout_finished or have_slot then
		return "done"
	else
		return "running"
	end
end

BTCombatShoutAction.anim_cb_shout_vo = function (self, unit, blackboard)
	local network_manager = Managers.state.network
	local game = network_manager:game()

	if game then
		local dialogue_input = ScriptUnit.extension_input(unit, "dialogue_system")
		local event_data = FrameTable.alloc_table()

		dialogue_input:trigger_networked_dialogue_event("shouting", event_data)
	end
end
