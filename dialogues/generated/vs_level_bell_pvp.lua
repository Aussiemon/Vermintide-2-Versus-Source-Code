-- chunkname: @dialogues/generated/vs_level_bell_pvp.lua

return function ()
	define_rule({
		name = "nde_vs_bell_set1_briefing_a",
		response = "nde_vs_bell_set1_briefing_a",
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
				"bell_pvp",
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
		name = "nde_vs_bell_set1_obj1_reached",
		response = "nde_vs_bell_set1_obj1_reached",
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
				"bell_pvp",
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
		name = "nde_vs_bell_set1_obj2_reached",
		response = "nde_vs_bell_set1_obj2_reached",
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
				"bell_pvp",
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
		name = "nde_vs_bell_set2_obj1_reached",
		response = "nde_vs_bell_set2_obj1_reached",
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
				"bell_pvp",
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
		name = "nde_vs_bell_set2_obj2_reached",
		response = "nde_vs_bell_set2_obj2_reached",
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
				"bell_pvp",
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
		name = "nde_vs_set1_obj1_screaming_bell_a",
		response = "nde_vs_set1_obj1_screaming_bell_a",
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
				"bell_pvp",
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
		name = "nde_vs_set1_obj2_screaming_bell_a",
		response = "nde_vs_set1_obj2_screaming_bell_a",
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
				"bell_pvp",
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
		name = "nde_vs_set2_obj1_screaming_bell_a",
		response = "nde_vs_set2_obj1_screaming_bell_a",
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
				"bell_pvp",
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
		name = "nde_vs_set2_obj2_screaming_bell_a",
		response = "nde_vs_set2_obj2_screaming_bell_a",
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
				"bell_pvp",
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
	add_dialogues({
		nde_vs_bell_set1_briefing_a = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
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
				"nde_vs_bell_set1_briefing_a_01",
				"nde_vs_bell_set1_briefing_a_02",
				"nde_vs_bell_set1_briefing_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_bell_set1_briefing_a_01",
				"nde_vs_bell_set1_briefing_a_02",
				"nde_vs_bell_set1_briefing_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		nde_vs_bell_set1_obj1_reached = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
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
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03",
			},
			sound_events_duration = {
				1.7391874790192,
				2.2400000095367,
				1.7391874790192,
			},
		},
		nde_vs_bell_set1_obj2_reached = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
			dialogue_animations_n = 2,
			face_animations_n = 2,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk",
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm",
			},
			localization_strings = {
				[1] = "nde_vs_agnostic_open_gate_a_01",
				[2] = "nde_vs_agnostic_open_gate_a_02",
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nde_vs_agnostic_open_gate_a_01",
				[2] = "nde_vs_agnostic_open_gate_a_02",
			},
			sound_events_duration = {
				[1] = 1.9509999752045,
				[2] = 2.3269999027252,
			},
		},
		nde_vs_bell_set2_obj1_reached = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
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
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_objective_sighted_agnostic_object_a_01",
				"nde_vs_objective_sighted_agnostic_object_a_02",
				"nde_vs_objective_sighted_agnostic_object_a_03",
			},
			sound_events_duration = {
				1.7391874790192,
				2.2400000095367,
				1.7391874790192,
			},
		},
		nde_vs_bell_set2_obj2_reached = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
			dialogue_animations_n = 2,
			face_animations_n = 2,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk",
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm",
			},
			localization_strings = {
				[1] = "nde_vs_agnostic_destroy_chains_a_01",
				[2] = "nde_vs_agnostic_destroy_chains_a_02",
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nde_vs_agnostic_destroy_chains_a_01",
				[2] = "nde_vs_agnostic_destroy_chains_a_02",
			},
			sound_events_duration = {
				[1] = 2.8659999370575,
				[2] = 3.550999879837,
			},
		},
		nde_vs_set1_obj1_screaming_bell_a = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
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
				"nde_vs_set1_obj1_screaming_bell_a_01",
				"nde_vs_set1_obj1_screaming_bell_a_02",
				"nde_vs_set1_obj1_screaming_bell_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_set1_obj1_screaming_bell_a_01",
				"nde_vs_set1_obj1_screaming_bell_a_02",
				"nde_vs_set1_obj1_screaming_bell_a_03",
			},
			sound_events_duration = {
				4.75,
				5.4099998474121,
				4.2329998016357,
			},
		},
		nde_vs_set1_obj2_screaming_bell_a = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
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
				"nde_vs_set1_obj2_screaming_bell_a_01",
				"nde_vs_set1_obj2_screaming_bell_a_02",
				"nde_vs_set1_obj2_screaming_bell_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_set1_obj2_screaming_bell_a_01",
				"nde_vs_set1_obj2_screaming_bell_a_02",
				"nde_vs_set1_obj2_screaming_bell_a_03",
			},
			sound_events_duration = {
				2.9760000705719,
				3.9059998989105,
				3.2149999141693,
			},
		},
		nde_vs_set2_obj1_screaming_bell_a = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
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
				"nde_vs_set2_obj1_screaming_bell_a_01",
				"nde_vs_set2_obj1_screaming_bell_a_02",
				"nde_vs_set2_obj1_screaming_bell_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_set2_obj1_screaming_bell_a_01",
				"nde_vs_set2_obj1_screaming_bell_a_02",
				"nde_vs_set2_obj1_screaming_bell_a_03",
			},
			sound_events_duration = {
				4.3769998550415,
				5.8540000915527,
				5.2300000190735,
			},
		},
		nde_vs_set2_obj2_screaming_bell_a = {
			category = "npc_talk",
			database = "vs_level_bell_pvp",
			dialogue_animations_n = 2,
			face_animations_n = 2,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk",
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm",
			},
			localization_strings = {
				[1] = "nde_vs_set2_obj2_screaming_bell_a_01",
				[2] = "nde_vs_set2_obj2_screaming_bell_a_02",
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "nde_vs_set2_obj2_screaming_bell_a_01",
				[2] = "nde_vs_set2_obj2_screaming_bell_a_02",
			},
			sound_events_duration = {
				[1] = 4.1849999427795,
				[2] = 4.8410000801086,
			},
		},
	})
end
