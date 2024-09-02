﻿-- chunkname: @scripts/settings/dlcs/cog/career_ability_settings_cog.lua

require("scripts/settings/dlcs/cog/passive_ability_engineer")

ActivatedAbilitySettings.dr_4 = {
	{
		action_name = "action_career_dr_4",
		activatable_on_wield_chain_only = true,
		cooldown = 60,
		description = "career_active_desc_dr_4_b",
		display_name = "career_active_name_dr_4",
		hide_ability_ui_effects = true,
		icon = "bardin_engineer_activated_ability",
		show_gamepad_ability_bar = true,
		weapon_name = "bardin_engineer_career_skill_weapon",
		weapon_names_by_index = {
			"bardin_engineer_career_skill_weapon",
			"bardin_engineer_career_skill_weapon_heavy",
		},
		mechanism_overrides = {
			versus = {
				weapon_name = "bardin_engineer_career_skill_weapon_vs",
				weapon_names_by_index = {
					"bardin_engineer_career_skill_weapon_vs",
					"bardin_engineer_career_skill_weapon_heavy_vs",
				},
			},
		},
	},
}
PassiveAbilitySettings.dr_4 = {
	description = "career_passive_desc_dr_4a_b",
	display_name = "career_passive_name_dr_4a",
	icon = "bardin_engineer_passive",
	description_values = {
		{
			value = 12,
		},
		{
			value = 5,
		},
	},
	buffs = {
		"bardin_engineer_passive_no_ability_regen",
		"bardin_engineer_passive_ranged_power_aura",
		"bardin_engineer_passive_max_ammo",
	},
	perks = {
		{
			description = "career_passive_desc_dr_4b",
			display_name = "career_passive_name_dr_4b",
		},
		{
			description = "career_passive_desc_dr_4c",
			display_name = "career_passive_name_dr_4c",
		},
		{
			description = "career_passive_desc_dr_4d",
			display_name = "career_passive_name_dr_4d",
		},
	},
	passive_ability_classes = {
		{
			name = "dr_4",
			ability_class = PassiveAbilityEngineer,
		},
	},
}
