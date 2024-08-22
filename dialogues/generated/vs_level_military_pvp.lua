-- chunkname: @dialogues/generated/vs_level_military_pvp.lua

return function ()
	define_rule({
		name = "nde_vs_military_set1_briefing_a",
		response = "nde_vs_military_set1_briefing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self",
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_safe_room_start_a",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				0,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set1_obj1_a",
		response = "nde_vs_military_set1_obj1_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self",
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_safe_room_round_started_a",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				1,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set1_obj1_reached",
		response = "nde_vs_military_set1_obj1_reached",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				1,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set1_obj2_a",
		response = "nde_vs_military_set1_obj2_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self",
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_new_objective_intro_a",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				2,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set1_obj2_reached",
		response = "nde_vs_military_set1_obj2_reached",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				1,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				2,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set2_obj1_a",
		response = "nde_vs_military_set2_obj1_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self",
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_safe_room_round_started_a",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				1,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set2_obj1_reached",
		response = "nde_vs_military_set2_obj1_reached",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				1,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set2_obj2_a",
		response = "nde_vs_military_set2_obj2_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self",
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_new_objective_intro_a",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				2,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set2_obj2_reached",
		response = "nde_vs_military_set2_obj2_reached",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				2,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				2,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set3_obj1_a",
		response = "nde_vs_military_set3_obj1_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self",
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_safe_room_round_started_a",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				3,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				1,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set3_obj1_reached",
		response = "nde_vs_military_set3_obj1_reached",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				3,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				1,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set3_obj2_a",
		response = "nde_vs_military_set3_obj2_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self",
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_new_objective_intro_a",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				3,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				2,
			},
		},
	})
	define_rule({
		name = "nde_vs_military_set3_obj2_reached",
		response = "nde_vs_military_set3_obj2_reached",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached",
			},
			{
				"user_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver",
			},
			{
				"global_context",
				"current_level",
				OP.EQ,
				"military_pvp",
			},
			{
				"global_context",
				"current_set",
				OP.EQ,
				3,
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				2,
			},
		},
	})
	add_dialogues({
		nde_vs_military_set1_briefing_a = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set1_briefing_a_01",
				"nde_vs_military_set1_briefing_a_02",
				"nde_vs_military_set1_briefing_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set1_briefing_a_01",
				"nde_vs_military_set1_briefing_a_02",
				"nde_vs_military_set1_briefing_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set1_obj1_a = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set1_obj1_a_01",
				"nde_vs_military_set1_obj1_a_02",
				"nde_vs_military_set1_obj1_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set1_obj1_a_01",
				"nde_vs_military_set1_obj1_a_02",
				"nde_vs_military_set1_obj1_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set1_obj1_reached = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set1_obj1_event_a_01",
				"nde_vs_military_set1_obj1_event_a_02",
				"nde_vs_military_set1_obj1_event_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set1_obj1_event_a_01",
				"nde_vs_military_set1_obj1_event_a_02",
				"nde_vs_military_set1_obj1_event_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set1_obj2_a = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_keep_moving_a_01",
				"nde_vs_keep_moving_a_02",
				"nde_vs_keep_moving_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_keep_moving_a_01",
				"nde_vs_keep_moving_a_02",
				"nde_vs_keep_moving_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set1_obj2_reached = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set1_obj2_event_a_01",
				"nde_vs_military_set1_obj2_event_a_02",
				"nde_vs_military_set1_obj2_event_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set1_obj2_event_a_01",
				"nde_vs_military_set1_obj2_event_a_02",
				"nde_vs_military_set1_obj2_event_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set2_obj1_a = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set2_obj1_a_01",
				"nde_vs_military_set2_obj1_a_02",
				"nde_vs_military_set2_obj1_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set2_obj1_a_01",
				"nde_vs_military_set2_obj1_a_02",
				"nde_vs_military_set2_obj1_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set2_obj1_reached = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_agnostic_capture_a_01",
				"nde_vs_agnostic_capture_a_02",
				"nde_vs_agnostic_capture_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_agnostic_capture_a_01",
				"nde_vs_agnostic_capture_a_02",
				"nde_vs_agnostic_capture_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set2_obj2_a = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_keep_moving_a_01",
				"nde_vs_keep_moving_a_02",
				"nde_vs_keep_moving_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_keep_moving_a_01",
				"nde_vs_keep_moving_a_02",
				"nde_vs_keep_moving_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set2_obj2_reached = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set2_obj2_event_a_01",
				"nde_vs_military_set2_obj2_event_a_02",
				"nde_vs_military_set2_obj2_event_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set2_obj2_event_a_01",
				"nde_vs_military_set2_obj2_event_a_02",
				"nde_vs_military_set2_obj2_event_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set3_obj1_a = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set3_obj1_a_01",
				"nde_vs_military_set3_obj1_a_02",
				"nde_vs_military_set3_obj1_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set3_obj1_a_01",
				"nde_vs_military_set3_obj1_a_02",
				"nde_vs_military_set3_obj1_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set3_obj1_reached = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_agnostic_capture_a_01",
				"nde_vs_agnostic_capture_a_02",
				"nde_vs_agnostic_capture_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_agnostic_capture_a_01",
				"nde_vs_agnostic_capture_a_02",
				"nde_vs_agnostic_capture_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set3_obj2_a = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_keep_moving_a_01",
				"nde_vs_keep_moving_a_02",
				"nde_vs_keep_moving_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_keep_moving_a_01",
				"nde_vs_keep_moving_a_02",
				"nde_vs_keep_moving_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_military_set3_obj2_reached = {
			category = "npc_talk",
			database = "vs_level_military_pvp",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
			},
			localization_strings = {
				"nde_vs_military_set3_obj2_event_a_01",
				"nde_vs_military_set3_obj2_event_a_02",
				"nde_vs_military_set3_obj2_event_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_military_set3_obj2_event_a_01",
				"nde_vs_military_set3_obj2_event_a_02",
				"nde_vs_military_set3_obj2_event_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
	})
end
