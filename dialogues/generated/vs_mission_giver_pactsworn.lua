-- chunkname: @dialogues/generated/vs_mission_giver_pactsworn.lua

return function ()
	define_rule({
		name = "vmg_vs_about_to_early_loss_a",
		response = "vmg_vs_about_to_early_loss_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_about_to_early_loss",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_about_to_early_loss",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_about_to_early_loss",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_about_to_early_win_a",
		response = "vmg_vs_about_to_early_win_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_about_to_early_win",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_about_to_early_win",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_about_to_early_win",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_early_loss_a",
		response = "vmg_vs_early_loss_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_early_loss",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_early_loss",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_early_loss",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_early_win_a",
		response = "vmg_vs_early_win_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_early_win",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_early_win",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_early_win",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_bright_wizard_dead_a",
		response = "vmg_vs_hero_bright_wizard_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_bright_wizard_dead",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_bright_wizard_dead",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_bright_wizard_rushing_a",
		response = "vmg_vs_hero_bright_wizard_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_dwarf_ranger_dead_a",
		response = "vmg_vs_hero_dwarf_ranger_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_dwarf_ranger_dead",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_dwarf_ranger_dead",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_dwarf_ranger_rushing_a",
		response = "vmg_vs_hero_dwarf_ranger_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_empire_soldier_dead_a",
		response = "vmg_vs_hero_empire_soldier_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_empire_soldier_dead",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_empire_soldier_dead",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_empire_soldier_rushing_a",
		response = "vmg_vs_hero_empire_soldier_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_witch_hunter_dead_a",
		response = "vmg_vs_hero_witch_hunter_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_witch_hunter_dead",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_witch_hunter_dead",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_witch_hunter_rushing_a",
		response = "vmg_vs_hero_witch_hunter_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_wood_elf_dead_a",
		response = "vmg_vs_hero_wood_elf_dead_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_wood_elf_dead",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_wood_elf_dead",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_hero_wood_elf_rushing_a",
		response = "vmg_vs_hero_wood_elf_rushing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_hero_rushing",
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_hero_rushing",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_hero_rushing",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_last_man_standing_a",
		response = "vmg_vs_heroes_last_man_standing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_last_man_standing",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_heroes_last_man_standing",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_heroes_last_man_standing",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_objective_almost_completed_a",
		response = "vmg_vs_heroes_objective_almost_completed_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_almost_completed",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_objective_completed_a",
		response = "vmg_vs_heroes_objective_completed_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_completed",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_objective_completed_b",
		response = "vmg_vs_heroes_objective_completed_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vmg_vs_heroes_objective_completed_a_done",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_objective_reached_a",
		response = "vmg_vs_heroes_objective_reached_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_reached",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_reached_safe_room_a",
		response = "vmg_vs_heroes_reached_safe_room_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_reached_safe_room",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_heroes_reached_safe_room",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_heroes_reached_safe_room",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_reached_waystone_a",
		response = "vmg_vs_heroes_reached_waystone_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_reached_waystone",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_heroes_reached_waystone",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_heroes_reached_waystone",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_heroes_team_wipe_a",
		response = "vmg_vs_heroes_team_wipe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_team_wipe",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_heroes_team_wipe",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_heroes_team_wipe",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_match_draw_a",
		response = "vmg_vs_match_draw_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_match_draw",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_match_draw",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_match_draw",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_new_spawn_horde_a",
		response = "vmg_vs_new_spawn_horde_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"horde",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
		},
	})
	define_rule({
		name = "vmg_vs_new_spawn_monster_a",
		response = "vmg_vs_new_spawn_monster_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_new_spawn_monster",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
		},
	})
	define_rule({
		name = "vmg_vs_pactsworn_wipe_a",
		response = "vmg_vs_pactsworn_wipe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_pactsworn_wipe",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_pactsworn_wipe",
				OP.LT,
				2,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_pactsworn_wipe",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_round_start_go_a",
		response = "vmg_vs_round_start_go_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_left_safe_room",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_heroes_left_safe_room",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_heroes_left_safe_room",
				OP.ADD,
				1,
			},
		},
	})
	define_rule({
		name = "vmg_vs_round_start_rant_a",
		response = "vmg_vs_round_start_rant_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_round_start",
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_pactsworn_mission_giver",
			},
			{
				"user_memory",
				"mg_round_started_vo",
				OP.EQ,
				0,
			},
		},
		on_done = {
			{
				"user_memory",
				"mg_round_started_vo",
				OP.ADD,
				1,
			},
		},
	})
	add_dialogues({
		vmg_vs_about_to_early_loss_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 6,
			face_animations_n = 6,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
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
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_about_to_early_loss_a_01",
				"vmg_a_vs_about_to_early_loss_a_02",
				"vmg_a_vs_about_to_early_loss_a_03",
				"vmg_a_vs_about_to_early_loss_a_04",
				"vmg_a_vs_about_to_early_loss_a_05",
				"vmg_a_vs_about_to_early_loss_a_06",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_about_to_early_loss_a_01",
				"vmg_a_vs_about_to_early_loss_a_02",
				"vmg_a_vs_about_to_early_loss_a_03",
				"vmg_a_vs_about_to_early_loss_a_04",
				"vmg_a_vs_about_to_early_loss_a_05",
				"vmg_a_vs_about_to_early_loss_a_06",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_about_to_early_win_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_about_to_early_win_a_01",
				"vmg_a_vs_about_to_early_win_a_02",
				"vmg_a_vs_about_to_early_win_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_about_to_early_win_a_01",
				"vmg_a_vs_about_to_early_win_a_02",
				"vmg_a_vs_about_to_early_win_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_early_loss_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 6,
			face_animations_n = 6,
			only_allies = true,
			randomize_indexes_n = 0,
			sound_events_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
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
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_early_loss_a_01",
				"vmg_a_vs_early_loss_a_02",
				"vmg_a_vs_early_loss_a_03",
				"vmg_a_vs_early_loss_a_04",
				"vmg_a_vs_early_loss_a_05",
				"vmg_a_vs_early_loss_a_06",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_early_loss_a_01",
				"vmg_a_vs_early_loss_a_02",
				"vmg_a_vs_early_loss_a_03",
				"vmg_a_vs_early_loss_a_04",
				"vmg_a_vs_early_loss_a_05",
				"vmg_a_vs_early_loss_a_06",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_early_win_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_early_win_a_01",
				"vmg_a_vs_early_win_a_02",
				"vmg_a_vs_early_win_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_early_win_a_01",
				"vmg_a_vs_early_win_a_02",
				"vmg_a_vs_early_win_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_hero_bright_wizard_dead_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_hero_bright_wizard_dead_a_01",
				"vmg_a_vs_hero_bright_wizard_dead_a_02",
				"vmg_a_vs_hero_bright_wizard_dead_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_bright_wizard_dead_a_01",
				"vmg_a_vs_hero_bright_wizard_dead_a_02",
				"vmg_a_vs_hero_bright_wizard_dead_a_03",
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				3.0907000303268,
			},
		},
		vmg_vs_hero_bright_wizard_rushing_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			only_allies = true,
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
				"vmg_a_vs_hero_bright_wizard_rushing_a_01",
				"vmg_a_vs_hero_bright_wizard_rushing_a_02",
				"vmg_a_vs_hero_bright_wizard_rushing_a_03",
				"vmg_a_vs_hero_bright_wizard_rushing_a_04",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_bright_wizard_rushing_a_01",
				"vmg_a_vs_hero_bright_wizard_rushing_a_02",
				"vmg_a_vs_hero_bright_wizard_rushing_a_03",
				"vmg_a_vs_hero_bright_wizard_rushing_a_04",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_hero_dwarf_ranger_dead_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_hero_dwarf_ranger_dead_a_01",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_02",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_dwarf_ranger_dead_a_01",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_02",
				"vmg_a_vs_hero_dwarf_ranger_dead_a_03",
			},
			sound_events_duration = {
				3.0907000303268,
				3.2422504425049,
				3.2675104141235,
			},
		},
		vmg_vs_hero_dwarf_ranger_rushing_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			only_allies = true,
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
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_01",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_02",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_03",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_04",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_01",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_02",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_03",
				"vmg_a_vs_hero_dwarf_ranger_rushing_a_04",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_hero_empire_soldier_dead_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_hero_empire_soldier_dead_a_01",
				"vmg_a_vs_hero_empire_soldier_dead_a_02",
				"vmg_a_vs_hero_empire_soldier_dead_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_empire_soldier_dead_a_01",
				"vmg_a_vs_hero_empire_soldier_dead_a_02",
				"vmg_a_vs_hero_empire_soldier_dead_a_03",
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				4.5402173995972,
			},
		},
		vmg_vs_hero_empire_soldier_rushing_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			only_allies = true,
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
				"vmg_a_vs_hero_empire_soldier_rushing_a_01",
				"vmg_a_vs_hero_empire_soldier_rushing_a_02",
				"vmg_a_vs_hero_empire_soldier_rushing_a_03",
				"vmg_a_vs_hero_empire_soldier_rushing_a_04",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_empire_soldier_rushing_a_01",
				"vmg_a_vs_hero_empire_soldier_rushing_a_02",
				"vmg_a_vs_hero_empire_soldier_rushing_a_03",
				"vmg_a_vs_hero_empire_soldier_rushing_a_04",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_hero_witch_hunter_dead_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_hero_witch_hunter_dead_a_01",
				"vmg_a_vs_hero_witch_hunter_dead_a_02",
				"vmg_a_vs_hero_witch_hunter_dead_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_witch_hunter_dead_a_01",
				"vmg_a_vs_hero_witch_hunter_dead_a_02",
				"vmg_a_vs_hero_witch_hunter_dead_a_03",
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				3.0907000303268,
			},
		},
		vmg_vs_hero_witch_hunter_rushing_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			only_allies = true,
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
				"vmg_a_vs_hero_witch_hunter_rushing_a_01",
				"vmg_a_vs_hero_witch_hunter_rushing_a_02",
				"vmg_a_vs_hero_witch_hunter_rushing_a_03",
				"vmg_a_vs_hero_witch_hunter_rushing_a_04",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_witch_hunter_rushing_a_01",
				"vmg_a_vs_hero_witch_hunter_rushing_a_02",
				"vmg_a_vs_hero_witch_hunter_rushing_a_03",
				"vmg_a_vs_hero_witch_hunter_rushing_a_04",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_hero_wood_elf_dead_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_hero_wood_elf_dead_a_01",
				"vmg_a_vs_hero_wood_elf_dead_a_02",
				"vmg_a_vs_hero_wood_elf_dead_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_wood_elf_dead_a_01",
				"vmg_a_vs_hero_wood_elf_dead_a_02",
				"vmg_a_vs_hero_wood_elf_dead_a_03",
			},
			sound_events_duration = {
				3.0907000303268,
				3.0907000303268,
				3.0907000303268,
			},
		},
		vmg_vs_hero_wood_elf_rushing_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 4,
			face_animations_n = 4,
			only_allies = true,
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
				"vmg_a_vs_hero_wood_elf_rushing_a_01",
				"vmg_a_vs_hero_wood_elf_rushing_a_02",
				"vmg_a_vs_hero_wood_elf_rushing_a_03",
				"vmg_a_vs_hero_wood_elf_rushing_a_04",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_hero_wood_elf_rushing_a_01",
				"vmg_a_vs_hero_wood_elf_rushing_a_02",
				"vmg_a_vs_hero_wood_elf_rushing_a_03",
				"vmg_a_vs_hero_wood_elf_rushing_a_04",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_heroes_last_man_standing_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_last_man_standing_a_01",
				"vmg_a_vs_heroes_last_man_standing_a_02",
				"vmg_a_vs_heroes_last_man_standing_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_last_man_standing_a_01",
				"vmg_a_vs_heroes_last_man_standing_a_02",
				"vmg_a_vs_heroes_last_man_standing_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_heroes_objective_almost_completed_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_almost_completed_a_01",
				"vmg_a_vs_heroes_objective_almost_completed_a_02",
				"vmg_a_vs_heroes_objective_almost_completed_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_objective_almost_completed_a_01",
				"vmg_a_vs_heroes_objective_almost_completed_a_02",
				"vmg_a_vs_heroes_objective_almost_completed_a_03",
			},
			sound_events_duration = {
				3.1276097297669,
				4.0865116119385,
				3.4948487281799,
			},
		},
		vmg_vs_heroes_objective_completed_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
			dialogue_animations_n = 3,
			face_animations_n = 3,
			only_allies = true,
			override_awareness = "vmg_vs_heroes_objective_completed_a_done",
			randomize_indexes_n = 0,
			sound_events_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_completed_a_01",
				"vmg_a_vs_heroes_objective_completed_a_02",
				"vmg_a_vs_heroes_objective_completed_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_objective_completed_a_01",
				"vmg_a_vs_heroes_objective_completed_a_02",
				"vmg_a_vs_heroes_objective_completed_a_03",
			},
			sound_events_duration = {
				4.9278583526611,
				5.2698378562927,
				5.6943969726563,
			},
		},
		vmg_vs_heroes_objective_completed_b = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_completed_b_01",
				"vmg_a_vs_heroes_objective_completed_b_02",
				"vmg_a_vs_heroes_objective_completed_b_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_objective_completed_b_01",
				"vmg_a_vs_heroes_objective_completed_b_02",
				"vmg_a_vs_heroes_objective_completed_b_03",
			},
			sound_events_duration = {
				3.5276324748993,
				4.6652965545654,
				4.4437870979309,
			},
		},
		vmg_vs_heroes_objective_reached_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_objective_reached_a_01",
				"vmg_a_vs_heroes_objective_reached_a_02",
				"vmg_a_vs_heroes_objective_reached_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_objective_reached_a_01",
				"vmg_a_vs_heroes_objective_reached_a_02",
				"vmg_a_vs_heroes_objective_reached_a_03",
			},
			sound_events_duration = {
				5.2295074462891,
				5.2434129714966,
				6.4028549194336,
			},
		},
		vmg_vs_heroes_reached_safe_room_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_reached_safe_room_a_01",
				"vmg_a_vs_heroes_reached_safe_room_a_02",
				"vmg_a_vs_heroes_reached_safe_room_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_reached_safe_room_a_01",
				"vmg_a_vs_heroes_reached_safe_room_a_02",
				"vmg_a_vs_heroes_reached_safe_room_a_03",
			},
			sound_events_duration = {
				5.478129863739,
				8.6326942443848,
				6.9529151916504,
			},
		},
		vmg_vs_heroes_reached_waystone_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_reached_waystone_a_01",
				"vmg_a_vs_heroes_reached_waystone_a_02",
				"vmg_a_vs_heroes_reached_waystone_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_reached_waystone_a_01",
				"vmg_a_vs_heroes_reached_waystone_a_02",
				"vmg_a_vs_heroes_reached_waystone_a_03",
			},
			sound_events_duration = {
				6.6480159759522,
				7.7145962715149,
				7.119047164917,
			},
		},
		vmg_vs_heroes_team_wipe_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_heroes_team_wipe_a_01",
				"vmg_a_vs_heroes_team_wipe_a_02",
				"vmg_a_vs_heroes_team_wipe_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_heroes_team_wipe_a_01",
				"vmg_a_vs_heroes_team_wipe_a_02",
				"vmg_a_vs_heroes_team_wipe_a_03",
			},
			sound_events_duration = {
				7.028694152832,
				5.4314961433411,
				7.6631050109863,
			},
		},
		vmg_vs_match_draw_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_match_draw_a_01",
				"vmg_a_vs_match_draw_a_02",
				"vmg_a_vs_match_draw_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_match_draw_a_01",
				"vmg_a_vs_match_draw_a_02",
				"vmg_a_vs_match_draw_a_03",
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
			},
		},
		vmg_vs_new_spawn_horde_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_new_spawn_horde_a_01",
				"vmg_a_vs_new_spawn_horde_a_02",
				"vmg_a_vs_new_spawn_horde_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_new_spawn_horde_a_01",
				"vmg_a_vs_new_spawn_horde_a_02",
				"vmg_a_vs_new_spawn_horde_a_03",
			},
			sound_events_duration = {
				4.9109778404236,
				5.0483283996582,
				7.3498873710632,
			},
		},
		vmg_vs_new_spawn_monster_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_new_spawn_monster_a_01",
				"vmg_a_vs_new_spawn_monster_a_02",
				"vmg_a_vs_new_spawn_monster_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_new_spawn_monster_a_01",
				"vmg_a_vs_new_spawn_monster_a_02",
				"vmg_a_vs_new_spawn_monster_a_03",
			},
			sound_events_duration = {
				4.2196116447449,
				3.0907000303268,
				3.0907000303268,
			},
		},
		vmg_vs_pactsworn_wipe_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_pactsworn_wipe_a_01",
				"vmg_a_vs_pactsworn_wipe_a_02",
				"vmg_a_vs_pactsworn_wipe_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_pactsworn_wipe_a_01",
				"vmg_a_vs_pactsworn_wipe_a_02",
				"vmg_a_vs_pactsworn_wipe_a_03",
			},
			sound_events_duration = {
				4.9327158927917,
				6.7193632125855,
				5.2688660621643,
			},
		},
		vmg_vs_round_start_go_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_round_start_go_a_01",
				"vmg_a_vs_round_start_go_a_02",
				"vmg_a_vs_round_start_go_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_round_start_go_a_01",
				"vmg_a_vs_round_start_go_a_02",
				"vmg_a_vs_round_start_go_a_03",
			},
			sound_events_duration = {
				3.8100295066834,
				3.5243787765503,
				3.5982291698456,
			},
		},
		vmg_vs_round_start_rant_a = {
			category = "npc_talk",
			database = "vs_mission_giver_pactsworn",
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
				"face_neutral",
				"face_neutral",
				"face_neutral",
			},
			localization_strings = {
				"vmg_a_vs_round_start_rant_a_01",
				"vmg_a_vs_round_start_rant_a_02",
				"vmg_a_vs_round_start_rant_a_03",
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_vs_round_start_rant_a_01",
				"vmg_a_vs_round_start_rant_a_02",
				"vmg_a_vs_round_start_rant_a_03",
			},
			sound_events_duration = {
				8.5326251983643,
				8.5534934997559,
				8.0429744720459,
			},
		},
	})
end
