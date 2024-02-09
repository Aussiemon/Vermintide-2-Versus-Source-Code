﻿-- chunkname: @scripts/entity_system/systems/behaviour/trees/chaos/chaos_exalted_sorcerer_drachenfels_behavior.lua

local ACTIONS = BreedActions.chaos_exalted_sorcerer_drachenfels

BreedBehaviors.chaos_exalted_sorcerer_drachenfels = {
	"BTSelector",
	{
		"BTSpawningAction",
		condition = "spawn",
		name = "spawn",
	},
	{
		"BTSequence",
		action_data = ACTIONS.intro_sequence,
		{
			"BTDefensiveIdleAction",
			leave_hook = "sorcerer_drachenfels_go_defensive",
			name = "intro_idle",
			action_data = ACTIONS.intro_idle,
		},
		condition = "lord_intro",
		enter_hook = "on_chaos_exalted_sorcerer_drachenfels_intro_enter",
		leave_hook = "on_drachenfels_sorcerer_intro_leave",
		name = "intro_sequence",
	},
	{
		"BTSelector",
		{
			"BTTeleportAction",
			condition = "at_teleport_smartobject",
			name = "teleport",
		},
		{
			"BTChaosSorcererTeleportAction",
			condition = "at_climb_smartobject",
			name = "climb_teleport",
		},
		{
			"BTChaosSorcererTeleportAction",
			condition = "at_jump_smartobject",
			name = "jump_teleport",
		},
		{
			"BTChaosSorcererTeleportAction",
			condition = "at_door_smartobject",
			name = "door_teleport",
		},
		condition = "at_smartobject",
		name = "smartobject",
	},
	{
		"BTSelector",
		{
			"BTSelector",
			{
				"BTSequence",
				{
					"BTSpawnAllies",
					leave_hook = "sorcerer_next_phase",
					name = "spawn_wave_defensive_intense",
					action_data = ACTIONS.spawn_allies_devensive_intense,
				},
				condition = "defensive_mode_starts",
				enter_hook = "sorcerer_drachenfels_begin_defensive_mode",
				name = "defensive_mode_starts",
			},
			{
				"BTSequence",
				{
					"BTDefensiveIdleAction",
					name = "defensive_idle",
					action_data = ACTIONS.defensive_idle,
				},
				{
					"BTQuickTeleportAction",
					leave_hook = "sorcerer_drachenfels_go_offensive_intense",
					name = "teleport_to_float",
					action_data = ACTIONS.teleport_to_float,
				},
				condition = "spawned_allies_dead_or_time",
				enter_hook = "teleport_to_center_drachenfels",
				name = "defensive_mode_ends",
			},
			{
				"BTSelector",
				{
					"BTCastMissileAction",
					enter_hook = "sorcerer_defensive_seeking_bomb",
					name = "defensive_seeking_bomb",
					action_data = ACTIONS.defensive_seeking_bomb,
				},
				condition = "sorcerer_defensive_combat",
				name = "smartobject",
			},
			{
				"BTDefensiveIdleAction",
				name = "defensive_idle",
				action_data = ACTIONS.defensive_idle,
			},
			condition = "transitioned_one_third_health",
			name = "defensive_mode_third",
		},
		{
			"BTSelector",
			{
				"BTSequence",
				{
					"BTSpawnAllies",
					leave_hook = "sorcerer_next_phase",
					name = "spawn_wave_defensive",
					action_data = ACTIONS.spawn_allies_defensive,
				},
				condition = "defensive_mode_starts",
				enter_hook = "sorcerer_drachenfels_begin_defensive_mode",
				name = "defensive_mode_starts",
			},
			{
				"BTSequence",
				{
					"BTDefensiveIdleAction",
					leave_hook = "sorcerer_drachenfels_go_offensive",
					name = "defensive_idle",
					action_data = ACTIONS.defensive_idle,
				},
				condition = "spawned_allies_dead_or_time",
				enter_hook = "teleport_to_center_drachenfels",
				name = "defensive_mode_ends",
			},
			{
				"BTSequence",
				{
					"BTCastMissileAction",
					enter_hook = "sorcerer_defensive_seeking_bomb",
					name = "defensive_seeking_bomb",
					action_data = ACTIONS.defensive_seeking_bomb,
				},
				condition = "sorcerer_defensive_combat",
				name = "smartobject",
			},
			condition = "transitioned_two_thirds_health",
			name = "defensive_mode_second",
		},
		{
			"BTSelector",
			{
				"BTSequence",
				{
					"BTSpawnAllies",
					leave_hook = "sorcerer_next_phase",
					name = "spawn_wave_defensive",
					action_data = ACTIONS.spawn_allies_defensive,
				},
				condition = "defensive_mode_starts",
				enter_hook = "sorcerer_drachenfels_begin_defensive_mode",
				name = "defensive_mode_starts",
			},
			{
				"BTSequence",
				{
					"BTDefensiveIdleAction",
					leave_hook = "sorcerer_drachenfels_go_offensive",
					name = "defensive_idle",
					action_data = ACTIONS.defensive_idle,
				},
				condition = "spawned_allies_dead_or_time",
				enter_hook = "teleport_to_center_drachenfels",
				name = "defensive_mode_ends",
			},
			{
				"BTSequence",
				{
					"BTCastMissileAction",
					enter_hook = "sorcerer_defensive_seeking_bomb",
					name = "defensive_seeking_bomb",
					action_data = ACTIONS.defensive_seeking_bomb,
				},
				condition = "sorcerer_defensive_combat",
				name = "smartobject",
			},
			name = "defensive_mode_first",
		},
		condition = "sorcerer_in_defensive_mode",
		name = "defensive_mode",
	},
	{
		"BTSelector",
		{
			"BTSelector",
			{
				"BTSequence",
				{
					"BTQuickTeleportAction",
					enter_hook = "drop_items",
					name = "teleport_to_death",
					action_data = ACTIONS.teleport_to_death,
				},
				{
					"BTChampionAttackAction",
					leave_hook = "unclamp_health",
					name = "death_explosion",
					action_data = ACTIONS.death_explosion,
				},
				condition = "less_than_one_health",
				enter_hook = "teleport_to_center_drachenfels",
				leave_hook = "kill_unit",
				name = "death_sequence",
			},
			{
				"BTUtilityNode",
				{
					"BTSequence",
					action_data = ACTIONS.ring_spawn,
					{
						"BTSpawnAllies",
						enter_hook = "trickle_spawn_drachenfels",
						name = "spawn_allies_trickle",
						action_data = ACTIONS.spawn_allies_trickle,
					},
					condition = "sorcerer_allow_tricke_spawn",
					name = "ring_spawn",
				},
				{
					"BTBossFollowAction",
					name = "follow",
					action_data = ACTIONS.follow,
				},
				{
					"BTMeleeOverlapAttackAction",
					name = "swing_floating",
					action_data = ACTIONS.swing_floating,
				},
				{
					"BTMeleeOverlapAttackAction",
					name = "combo_attack",
					action_data = ACTIONS.combo_attack,
				},
				name = "combat",
			},
			condition = "transitioned_one_third_health",
			name = "final offense phase",
		},
		{
			"BTSelector",
			{
				"BTSequence",
				{
					"BTQuickTeleportAction",
					leave_hook = "sorcerer_drachenfels_re_enter_defensive",
					name = "defensive_teleport_init_p3",
					action_data = ACTIONS.defensive_escape_teleport,
				},
				condition = "can_transition_one_third_health",
				enter_hook = "sorcerer_drachenfels_re_enter_defensive_mode",
				leave_hook = "transition_at_one_third",
				name = "back_to_defensive",
			},
			{
				"BTSequence",
				{
					"BTQuickTeleportAction",
					leave_hook = "sorcerer_drachenfels_re_enter_defensive",
					name = "defensive_teleport_init_p2",
					action_data = ACTIONS.defensive_escape_teleport,
				},
				condition = "can_transition_two_thirds_health",
				enter_hook = "sorcerer_drachenfels_re_enter_defensive_mode",
				leave_hook = "transition_at_two_thirds",
				name = "back_to_defensive",
			},
			{
				"BTSequence",
				{
					"BTQuickTeleportAction",
					name = "defensive_teleport_p1",
					action_data = ACTIONS.teleport_to_aoe,
				},
				{
					"BTChaosSorcererSummoningAction",
					name = "spawn_boss_rings_1",
					action_data = ACTIONS.spawn_boss_rings_1,
				},
				{
					"BTDefensiveIdleAction",
					leave_hook = "ring_summoning_ends",
					name = "exhausted_idle",
					action_data = ACTIONS.exhausted_idle,
				},
				condition = "first_ring_summon",
				enter_hook = "teleport_to_center_drachenfels",
				name = "summon_rings",
			},
			{
				"BTSequence",
				{
					"BTQuickTeleportAction",
					name = "defensive_teleport_p1",
					action_data = ACTIONS.teleport_to_aoe,
				},
				{
					"BTRandom",
					{
						"BTChaosSorcererSummoningAction",
						name = "spawn_boss_rings_1",
						weight = 1,
						action_data = ACTIONS.spawn_boss_rings_1,
					},
					{
						"BTChaosSorcererSummoningAction",
						name = "spawn_boss_rings_2",
						weight = 5,
						action_data = ACTIONS.spawn_boss_rings_2,
					},
					{
						"BTChaosSorcererSummoningAction",
						name = "spawn_boss_rings_3",
						weight = 5,
						action_data = ACTIONS.spawn_boss_rings_3,
					},
					{
						"BTChaosSorcererSummoningAction",
						name = "spawn_boss_rings_5",
						weight = 5,
						action_data = ACTIONS.spawn_boss_rings_5,
					},
					name = "random_ring_summon",
				},
				{
					"BTDefensiveIdleAction",
					name = "exhausted_idle",
					action_data = ACTIONS.exhausted_idle,
				},
				condition = "ready_to_summon_rings",
				enter_hook = "teleport_to_center_drachenfels",
				leave_hook = "ring_summoning_ends",
				name = "defensive_mode_ends",
			},
			{
				"BTUtilityNode",
				{
					"BTChampionAttackAction",
					name = "retaliation_aoe",
					action_data = ACTIONS.retaliation_aoe,
				},
				{
					"BTStormVerminAttackAction",
					condition = "ask_target_before_attacking",
					name = "overhead_downed",
					action_data = ACTIONS.overhead_downed,
				},
				{
					"BTStormVerminAttackAction",
					condition = "ask_target_before_attacking",
					name = "cleave_downed",
					action_data = ACTIONS.cleave_downed,
				},
				{
					"BTSequence",
					action_data = ACTIONS.spawn_trickle,
					{
						"BTQuickTeleportAction",
						enter_hook = "quick_teleport",
						leave_hook = "teleport_ends",
						name = "quick_teleport",
						action_data = ACTIONS.quick_teleport,
					},
					{
						"BTSpawnAllies",
						enter_hook = "teleport_spawn_sequence_drachenfels",
						name = "spawn_wave_offensive",
						action_data = ACTIONS.spawn_allies_offensive,
					},
					name = "spawn_trickle",
				},
				{
					"BTCastMissileAction",
					name = "defensive_magic_missile",
					action_data = ACTIONS.defensive_magic_missile,
				},
				name = "attack_and_teleport",
			},
			name = "first offensive phase",
		},
		condition = "can_see_player",
		name = "has_target",
	},
	{
		"BTIdleAction",
		name = "idle",
	},
	name = "chaos_exalted_sorcerer_drachenfels",
}
