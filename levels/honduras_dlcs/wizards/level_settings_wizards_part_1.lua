﻿-- chunkname: @levels/honduras_dlcs/wizards/level_settings_wizards_part_1.lua

LevelSettings.dlc_wizards_trail = {
	act = "act_wizards",
	act_presentation_order = 1,
	act_unlock_order = 0,
	ambient_sound_event = "silent_default_world_sound",
	boss_spawning_method = "hand_placed",
	climate_type = "snow",
	conflict_settings = "no_patrols",
	default_surface_material = "snow",
	description_text = "nik_dlc_wizards_trail_loading_screen_01",
	display_name = "level_name_dlc_wizards_trail",
	dlc_name = "wizards_part_1",
	environment_state = "exterior",
	knocked_down_setting = "knocked_down",
	level_image = "dlc_wizards_trail",
	level_name = "levels/honduras_dlcs/wizards/dlc_wizards_trail/world",
	loading_ui_package_name = "loading_screen_30",
	player_aux_bus_name = "environment_reverb_outside",
	source_aux_bus_name = "environment_reverb_outside_source",
	unlockable = true,
	use_mini_patrols = false,
	packages = {
		"resource_packages/levels/dlcs/wizards/dlc_wizards_trail",
	},
	level_particle_effects = {},
	level_screen_effects = {},
	locations = {},
	pickup_settings = {
		default = {
			primary = {
				ammo = 5,
				grenades = 4,
				painting_scrap = 3,
				potions = 4,
				healing = {
					first_aid_kit = 3,
					healing_draught = 3,
				},
				level_events = {
					explosive_barrel = 4,
					lamp_oil = 4,
				},
			},
			secondary = {
				ammo = 4,
				grenades = 2,
				healing = 4,
				potions = 2,
			},
		},
		normal = {
			primary = {
				ammo = 6,
				grenades = 6,
				painting_scrap = 3,
				potions = 6,
				healing = {
					first_aid_kit = 6,
					healing_draught = 8,
				},
				level_events = {
					explosive_barrel = 3,
					lamp_oil = 3,
				},
			},
			secondary = {
				ammo = 8,
				grenades = 10,
				healing = 12,
				potions = 10,
			},
		},
	},
	loading_screen_wwise_events = {
		"nik_wizard_trail_loading_screen_01",
		"nik_wizard_trail_loading_screen_02",
		dr_engineer = {
			"pdr_de_wizard_trail_loading_screen_01",
			"pdr_de_wizard_trail_loading_screen_02",
		},
		we_thornsister = {
			"pwe_st_wizard_trail_loading_screen_01",
			"pwe_st_wizard_trail_loading_screen_02",
		},
		es_questingknight = {
			"pes_gk_wizard_trail_loading_screen_01",
			"pes_gk_wizard_trail_loading_screen_02",
		},
		wh_priest = {
			"pwh_wp_wizard_trail_loading_screen_01",
			"pwh_wp_wizard_trail_loading_screen_02",
		},
		bw_necromancer = {
			"pbw_nm_wizard_trail_loading_screen_01",
			"pbw_nm_wizard_trail_loading_screen_02",
		},
	},
	locations = {
		"location_trail_ambush",
		"location_trail_avalanche",
		"location_trail_forest_of_shadows_left",
		"location_trail_forest_of_shadows_right",
		"location_trail_frozen_river",
		"location_trail_incline",
		"location_trail_lumber_yard",
		"location_trail_mountain_trail",
		"location_trail_necromancers_garden",
		"location_trail_station",
		"location_trail_wizards_tower",
		"location_trail_tockstadt_outskirts",
	},
}
