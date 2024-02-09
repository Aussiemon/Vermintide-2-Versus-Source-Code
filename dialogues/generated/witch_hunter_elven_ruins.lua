﻿-- chunkname: @dialogues/generated/witch_hunter_elven_ruins.lua

return function ()
	define_rule({
		name = "pwh_elven_ruins_intro_a",
		response = "pwh_elven_ruins_intro_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_intro_a",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"elven_ruins_intro_a",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_a",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_elven_ruins_intro_b",
		response = "pwh_elven_ruins_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak",
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"elven_ruins_intro_a",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"elven_ruins_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1,
			},
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_b",
				OP.TIMESET,
			},
		},
	})
	define_rule({
		name = "pwh_elven_ruins_intro_c",
		response = "pwh_elven_ruins_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak",
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"elven_ruins_intro_b",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"elven_ruins_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1,
			},
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_c",
				OP.TIMESET,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_big_tree",
		response = "pwh_level_elven_ruins_big_tree",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_big_tree",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_big_tree",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_big_tree",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_broken_waystone",
		response = "pwh_level_elven_ruins_broken_waystone",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_broken_waystone",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_broken_waystone",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_broken_waystone",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_clearing",
		response = "pwh_level_elven_ruins_clearing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_clearing",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_clearing",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_clearing",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_cliff_edge",
		response = "pwh_level_elven_ruins_cliff_edge",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_cliff_edge",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_cliff_edge",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_cliff_edge",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_entering_ruins",
		response = "pwh_level_elven_ruins_entering_ruins",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_entering_ruins",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_entering_ruins",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_entering_ruins",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_exit",
		response = "pwh_level_elven_ruins_exit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_exit",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"elven_ruins_exit",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_exit",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_first_aligned_pleasant_feeling",
		response = "pwh_level_elven_ruins_first_aligned_pleasant_feeling",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_first_aligned_pleasant_feeling",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_first_aligned_pleasant_feeling",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_first_aligned_pleasant_feeling",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_great_glade",
		response = "pwh_level_elven_ruins_great_glade",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_great_glade",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_great_glade",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_great_glade",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_maze_approach",
		response = "pwh_level_elven_ruins_maze_approach",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_maze_approach",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_maze_interior",
		response = "pwh_level_elven_ruins_maze_interior",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_maze_approach",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_noisy_puzzle",
		response = "pwh_level_elven_ruins_noisy_puzzle",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_noisy_puzzle",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_noisy_puzzle",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_noisy_puzzle",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_ravine_approach",
		response = "pwh_level_elven_ruins_ravine_approach",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_ravine_approach",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_ravine_approach",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_ravine_approach",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_ruins_proper",
		response = "pwh_level_elven_ruins_ruins_proper",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_temple_proper",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_temple_proper",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_temple_proper",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_second_aligned",
		response = "pwh_level_elven_ruins_second_aligned",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_second_aligned",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_second_aligned",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_second_aligned",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_seeing_puzzle",
		response = "pwh_level_elven_ruins_seeing_puzzle",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_seeing_puzzle",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_seeing_puzzle_crystals",
		response = "pwh_level_elven_ruins_seeing_puzzle_crystals",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_seeing_puzzle_crystals",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle_crystals",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle_crystals",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_shattered_temple",
		response = "pwh_level_elven_ruins_shattered_temple",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_shattered_temple",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_shattered_temple",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_shattered_temple",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_skaven_banners",
		response = "pwh_level_elven_ruins_skaven_banners",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_skaven_banners",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"faction_memory",
				"time_since_elven_ruins_skaven_banners",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_skaven_banners",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_task_complete",
		response = "pwh_level_elven_ruins_task_complete",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_task_complete",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_task_complete",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_task_complete",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "pwh_level_elven_ruins_untouched",
		response = "pwh_level_elven_ruins_untouched",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item",
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_untouched",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter",
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0,
			},
			{
				"faction_memory",
				"time_since_elven_ruins_untouched",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_untouched",
				OP.ADD,
				1,
			},
		},
	})
	add_dialogues({
		pwh_elven_ruins_intro_a = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 2,
			face_animations_n = 2,
			randomize_indexes_n = 0,
			sound_events_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk",
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral",
			},
			localization_strings = {
				[1] = "pwh_elven_ruins_intro_a_01",
				[2] = "pwh_elven_ruins_intro_a_02",
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_elven_ruins_intro_a_01",
				[2] = "pwh_elven_ruins_intro_a_02",
			},
			sound_events_duration = {
				[1] = 3.6224582195282,
				[2] = 4.4228749275208,
			},
		},
		pwh_elven_ruins_intro_b = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 2,
			face_animations_n = 2,
			randomize_indexes_n = 0,
			sound_events_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk",
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral",
			},
			localization_strings = {
				[1] = "pwh_elven_ruins_intro_b_01",
				[2] = "pwh_elven_ruins_intro_b_02",
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_elven_ruins_intro_b_01",
				[2] = "pwh_elven_ruins_intro_b_02",
			},
			sound_events_duration = {
				[1] = 6.2672080993652,
				[2] = 4.8067708015442,
			},
		},
		pwh_elven_ruins_intro_c = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 2,
			face_animations_n = 2,
			randomize_indexes_n = 0,
			sound_events_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk",
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral",
			},
			localization_strings = {
				[1] = "pwh_elven_ruins_intro_c_01",
				[2] = "pwh_elven_ruins_intro_c_02",
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_elven_ruins_intro_c_01",
				[2] = "pwh_elven_ruins_intro_c_02",
			},
			sound_events_duration = {
				[1] = 3.9022083282471,
				[2] = 2.5148334503174,
			},
		},
		pwh_level_elven_ruins_big_tree = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_big_tree_01",
				"pwh_level_elven_ruins_big_tree_02",
				"pwh_level_elven_ruins_big_tree_03",
				"pwh_level_elven_ruins_big_tree_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_big_tree_01",
				"pwh_level_elven_ruins_big_tree_02",
				"pwh_level_elven_ruins_big_tree_03",
				"pwh_level_elven_ruins_big_tree_04",
			},
			sound_events_duration = {
				6.6781873703003,
				5.7503123283386,
				7.2046041488647,
				7.2657084465027,
			},
		},
		pwh_level_elven_ruins_broken_waystone = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_angry",
				"face_angry",
				"face_angry",
			},
			localization_strings = {
				"pwh_level_elven_ruins_broken_waystone_01",
				"pwh_level_elven_ruins_broken_waystone_02",
				"pwh_level_elven_ruins_broken_waystone_03",
				"pwh_level_elven_ruins_broken_waystone_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_broken_waystone_01",
				"pwh_level_elven_ruins_broken_waystone_02",
				"pwh_level_elven_ruins_broken_waystone_03",
				"pwh_level_elven_ruins_broken_waystone_04",
			},
			sound_events_duration = {
				5.132312297821,
				3.8940000534058,
				4.1999998092651,
				5.912166595459,
			},
		},
		pwh_level_elven_ruins_clearing = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_clearing_01",
				"pwh_level_elven_ruins_clearing_02",
				"pwh_level_elven_ruins_clearing_03",
				"pwh_level_elven_ruins_clearing_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_clearing_01",
				"pwh_level_elven_ruins_clearing_02",
				"pwh_level_elven_ruins_clearing_03",
				"pwh_level_elven_ruins_clearing_04",
			},
			sound_events_duration = {
				6.353458404541,
				3.0872707366943,
				4.0769791603088,
				6.2714376449585,
			},
		},
		pwh_level_elven_ruins_cliff_edge = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_happy",
				"face_contempt",
				"face_contempt",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_cliff_edge_01",
				"pwh_level_elven_ruins_cliff_edge_02",
				"pwh_level_elven_ruins_cliff_edge_03",
				"pwh_level_elven_ruins_cliff_edge_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_cliff_edge_01",
				"pwh_level_elven_ruins_cliff_edge_02",
				"pwh_level_elven_ruins_cliff_edge_03",
				"pwh_level_elven_ruins_cliff_edge_04",
			},
			sound_events_duration = {
				3.0668957233429,
				2.4597499370575,
				3.2721457481384,
				3.9648125171661,
			},
		},
		pwh_level_elven_ruins_entering_ruins = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_entering_ruins_01",
				"pwh_level_elven_ruins_entering_ruins_02",
				"pwh_level_elven_ruins_entering_ruins_03",
				"pwh_level_elven_ruins_entering_ruins_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_entering_ruins_01",
				"pwh_level_elven_ruins_entering_ruins_02",
				"pwh_level_elven_ruins_entering_ruins_03",
				"pwh_level_elven_ruins_entering_ruins_04",
			},
			sound_events_duration = {
				5.1365208625794,
				3.5104582309723,
				3.5314373970032,
				4.7632293701172,
			},
		},
		pwh_level_elven_ruins_exit = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_exit_01",
				"pwh_level_elven_ruins_exit_02",
				"pwh_level_elven_ruins_exit_03",
				"pwh_level_elven_ruins_exit_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_exit_01",
				"pwh_level_elven_ruins_exit_02",
				"pwh_level_elven_ruins_exit_03",
				"pwh_level_elven_ruins_exit_04",
			},
			sound_events_duration = {
				3.0864374637604,
				3.4714999198914,
				1.7897291183472,
				3.2907292842865,
			},
		},
		pwh_level_elven_ruins_first_aligned_pleasant_feeling = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_01",
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_02",
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_03",
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_01",
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_02",
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_03",
				"pwh_level_elven_ruins_first_aligned_pleasant_feeling_04",
			},
			sound_events_duration = {
				9.7896041870117,
				8.7250623703003,
				7.1102085113525,
				7.3719372749329,
			},
		},
		pwh_level_elven_ruins_great_glade = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
			},
			localization_strings = {
				"pwh_level_elven_ruins_great_glade_01",
				"pwh_level_elven_ruins_great_glade_02",
				"pwh_level_elven_ruins_great_glade_03",
				"pwh_level_elven_ruins_great_glade_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_great_glade_01",
				"pwh_level_elven_ruins_great_glade_02",
				"pwh_level_elven_ruins_great_glade_03",
				"pwh_level_elven_ruins_great_glade_04",
			},
			sound_events_duration = {
				4.191978931427,
				3.5283541679382,
				3.6975834369659,
				2.4304375648499,
			},
		},
		pwh_level_elven_ruins_maze_approach = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
			},
			localization_strings = {
				"pwh_level_elven_ruins_maze_approach_01",
				"pwh_level_elven_ruins_maze_approach_02",
				"pwh_level_elven_ruins_maze_approach_03",
				"pwh_level_elven_ruins_maze_approach_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_maze_approach_01",
				"pwh_level_elven_ruins_maze_approach_02",
				"pwh_level_elven_ruins_maze_approach_03",
				"pwh_level_elven_ruins_maze_approach_04",
			},
			sound_events_duration = {
				4.4876041412353,
				3.5576875209808,
				4.9266247749329,
				4.4934372901917,
			},
		},
		pwh_level_elven_ruins_maze_interior = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
			},
			localization_strings = {
				"pwh_level_elven_ruins_maze_interior_01",
				"pwh_level_elven_ruins_maze_interior_02",
				"pwh_level_elven_ruins_maze_interior_03",
				"pwh_level_elven_ruins_maze_interior_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_maze_interior_01",
				"pwh_level_elven_ruins_maze_interior_02",
				"pwh_level_elven_ruins_maze_interior_03",
				"pwh_level_elven_ruins_maze_interior_04",
			},
			sound_events_duration = {
				3.317479133606,
				2.0687291622162,
				1.730291724205,
				3.6808125972748,
			},
		},
		pwh_level_elven_ruins_noisy_puzzle = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_noisy_puzzle_01",
				"pwh_level_elven_ruins_noisy_puzzle_02",
				"pwh_level_elven_ruins_noisy_puzzle_03",
				"pwh_level_elven_ruins_noisy_puzzle_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_noisy_puzzle_01",
				"pwh_level_elven_ruins_noisy_puzzle_02",
				"pwh_level_elven_ruins_noisy_puzzle_03",
				"pwh_level_elven_ruins_noisy_puzzle_04",
			},
			sound_events_duration = {
				4.5792083740234,
				3.7841875553131,
				4.0165414810181,
				3.3606667518616,
			},
		},
		pwh_level_elven_ruins_ravine_approach = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
			},
			localization_strings = {
				"pwh_level_elven_ruins_ravine_approach_01",
				"pwh_level_elven_ruins_ravine_approach_02",
				"pwh_level_elven_ruins_ravine_approach_03",
				"pwh_level_elven_ruins_ravine_approach_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_ravine_approach_01",
				"pwh_level_elven_ruins_ravine_approach_02",
				"pwh_level_elven_ruins_ravine_approach_03",
				"pwh_level_elven_ruins_ravine_approach_04",
			},
			sound_events_duration = {
				2.6002917289734,
				1.7211458683014,
				2.4090623855591,
				6.8926043510437,
			},
		},
		pwh_level_elven_ruins_ruins_proper = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_ruins_proper_01",
				"pwh_level_elven_ruins_ruins_proper_02",
				"pwh_level_elven_ruins_ruins_proper_03",
				"pwh_level_elven_ruins_ruins_proper_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_ruins_proper_01",
				"pwh_level_elven_ruins_ruins_proper_02",
				"pwh_level_elven_ruins_ruins_proper_03",
				"pwh_level_elven_ruins_ruins_proper_04",
			},
			sound_events_duration = {
				3.2857916355133,
				3.408145904541,
				4.0455622673035,
				2.5107290744781,
			},
		},
		pwh_level_elven_ruins_second_aligned = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_second_aligned_01",
				"pwh_level_elven_ruins_second_aligned_02",
				"pwh_level_elven_ruins_second_aligned_03",
				"pwh_level_elven_ruins_second_aligned_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_second_aligned_01",
				"pwh_level_elven_ruins_second_aligned_02",
				"pwh_level_elven_ruins_second_aligned_03",
				"pwh_level_elven_ruins_second_aligned_04",
			},
			sound_events_duration = {
				3.1745207309723,
				1.2431666851044,
				2.1432707309723,
				4.3568539619446,
			},
		},
		pwh_level_elven_ruins_seeing_puzzle = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_seeing_puzzle_01",
				"pwh_level_elven_ruins_seeing_puzzle_02",
				"pwh_level_elven_ruins_seeing_puzzle_03",
				"pwh_level_elven_ruins_seeing_puzzle_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_seeing_puzzle_01",
				"pwh_level_elven_ruins_seeing_puzzle_02",
				"pwh_level_elven_ruins_seeing_puzzle_03",
				"pwh_level_elven_ruins_seeing_puzzle_04",
			},
			sound_events_duration = {
				8.4479999542236,
				7.4641876220703,
				6.1275000572205,
				5.1599168777466,
			},
		},
		pwh_level_elven_ruins_seeing_puzzle_crystals = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_seeing_puzzle_crystals_01",
				"pwh_level_elven_ruins_seeing_puzzle_crystals_02",
				"pwh_level_elven_ruins_seeing_puzzle_crystals_03",
				"pwh_level_elven_ruins_seeing_puzzle_crystals_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_seeing_puzzle_crystals_01",
				"pwh_level_elven_ruins_seeing_puzzle_crystals_02",
				"pwh_level_elven_ruins_seeing_puzzle_crystals_03",
				"pwh_level_elven_ruins_seeing_puzzle_crystals_04",
			},
			sound_events_duration = {
				3.8081457614899,
				5.4011249542236,
				5.1370625495911,
				5.8293957710266,
			},
		},
		pwh_level_elven_ruins_shattered_temple = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_shattered_temple_01",
				"pwh_level_elven_ruins_shattered_temple_02",
				"pwh_level_elven_ruins_shattered_temple_03",
				"pwh_level_elven_ruins_shattered_temple_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_shattered_temple_01",
				"pwh_level_elven_ruins_shattered_temple_02",
				"pwh_level_elven_ruins_shattered_temple_03",
				"pwh_level_elven_ruins_shattered_temple_04",
			},
			sound_events_duration = {
				5.3373126983643,
				3.4019167423248,
				5.2807292938232,
				6.7922081947327,
			},
		},
		pwh_level_elven_ruins_skaven_banners = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
			},
			localization_strings = {
				"pwh_level_elven_ruins_skaven_banners_01",
				"pwh_level_elven_ruins_skaven_banners_02",
				"pwh_level_elven_ruins_skaven_banners_03",
				"pwh_level_elven_ruins_skaven_banners_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_skaven_banners_01",
				"pwh_level_elven_ruins_skaven_banners_02",
				"pwh_level_elven_ruins_skaven_banners_03",
				"pwh_level_elven_ruins_skaven_banners_04",
			},
			sound_events_duration = {
				4.2521877288818,
				6.8800835609436,
				4.4874582290649,
				4.488853931427,
			},
		},
		pwh_level_elven_ruins_task_complete = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"pwh_level_elven_ruins_task_complete_01",
				"pwh_level_elven_ruins_task_complete_02",
				"pwh_level_elven_ruins_task_complete_03",
				"pwh_level_elven_ruins_task_complete_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_task_complete_01",
				"pwh_level_elven_ruins_task_complete_02",
				"pwh_level_elven_ruins_task_complete_03",
				"pwh_level_elven_ruins_task_complete_04",
			},
			sound_events_duration = {
				5.1434373855591,
				5.4501252174377,
				4.79141664505,
				5.640124797821,
			},
		},
		pwh_level_elven_ruins_untouched = {
			category = "level_talk",
			database = "witch_hunter_elven_ruins",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			randomize_indexes_n = 0,
			sound_events_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned",
			},
			localization_strings = {
				"pwh_level_elven_ruins_untouched_01",
				"pwh_level_elven_ruins_untouched_02",
				"pwh_level_elven_ruins_untouched_03",
				"pwh_level_elven_ruins_untouched_04",
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_elven_ruins_untouched_01",
				"pwh_level_elven_ruins_untouched_02",
				"pwh_level_elven_ruins_untouched_03",
				"pwh_level_elven_ruins_untouched_04",
			},
			sound_events_duration = {
				4.2352499961853,
				6.3486251831055,
				5.6039581298828,
				6.920437335968,
			},
		},
	})
end
