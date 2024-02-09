﻿-- chunkname: @scripts/settings/dlcs/shovel/weapon_skins_shovel.lua

local skins = {
	{
		name = "bw_necromancy_staff_skin_01",
		data = {
			description = "bw_necromancy_staff_skin_01_description",
			display_name = "bw_necromancy_staff_skin_01_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_necromancy_staff_01",
			left_hand_unit = "units/weapons/player/wpn_invisible_weapon",
			rarity = "common",
			right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_01/wpn_bw_necromancy_staff_01",
			template = "staff_death",
		},
	},
	{
		name = "bw_necromancy_staff_skin_01_runed_01",
		data = {
			description = "bw_necromancy_staff_skin_01_runed_01_description",
			display_name = "bw_necromancy_staff_skin_01_runed_01_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_necromancy_staff_01_runed_01",
			left_hand_unit = "units/weapons/player/wpn_invisible_weapon",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_01/wpn_bw_necromancy_staff_01_runed_01",
			template = "staff_death",
		},
	},
	{
		name = "bw_necromancy_staff_skin_01_runed_02",
		data = {
			description = "bw_necromancy_staff_skin_01_runed_02_description",
			display_name = "bw_necromancy_staff_skin_01_runed_02_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_necromancy_staff_01_runed_02",
			left_hand_unit = "units/weapons/player/wpn_invisible_weapon",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_01/wpn_bw_necromancy_staff_01_runed_01",
			template = "staff_death",
			material_settings = WeaponMaterialSettingsTemplates.purple_glow,
		},
	},
	{
		name = "bw_necromancy_staff_skin_02",
		data = {
			description = "bw_necromancy_staff_skin_02_description",
			display_name = "bw_necromancy_staff_skin_02_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_necromancy_staff_02",
			left_hand_unit = "units/weapons/player/wpn_invisible_weapon",
			rarity = "rare",
			right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_02/wpn_bw_necromancy_staff_02",
			template = "staff_death",
		},
	},
	{
		name = "bw_necromancy_staff_skin_02_runed_01",
		data = {
			description = "bw_necromancy_staff_skin_02_runed_01_description",
			display_name = "bw_necromancy_staff_skin_02_runed_01_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_necromancy_staff_02_runed_01",
			left_hand_unit = "units/weapons/player/wpn_invisible_weapon",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_02/wpn_bw_necromancy_staff_02_runed_01",
			template = "staff_death",
		},
	},
	{
		name = "bw_necromancy_staff_skin_02_runed_02",
		data = {
			description = "bw_necromancy_staff_skin_02_runed_02_description",
			display_name = "bw_necromancy_staff_skin_02_runed_02_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_necromancy_staff_02_runed_02",
			left_hand_unit = "units/weapons/player/wpn_invisible_weapon",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_02/wpn_bw_necromancy_staff_02_runed_01",
			template = "staff_death",
			material_settings = WeaponMaterialSettingsTemplates.purple_glow,
		},
	},
	{
		name = "bw_ghost_scythe_skin_01",
		data = {
			description = "bw_ghost_scythe_skin_01_description",
			display_name = "bw_ghost_scythe_skin_01_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_ghost_scythe_01",
			rarity = "common",
			right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01",
			template = "staff_scythe",
			right_hand_unit_override = {
				bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_fire",
				bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_fire",
				bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_fire",
			},
		},
	},
	{
		name = "bw_ghost_scythe_skin_01_runed_01",
		data = {
			description = "bw_ghost_scythe_skin_01_runed_01_description",
			display_name = "bw_ghost_scythe_skin_01_runed_01_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_ghost_scythe_01_runed_01",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01",
			template = "staff_scythe",
			right_hand_unit_override = {
				bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01_fire",
				bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01_fire",
				bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01_fire",
			},
		},
	},
	{
		name = "bw_ghost_scythe_skin_01_runed_02",
		data = {
			description = "bw_ghost_scythe_skin_01_runed_02_description",
			display_name = "bw_ghost_scythe_skin_01_runed_02_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_ghost_scythe_01_runed_02",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01",
			template = "staff_scythe",
			right_hand_unit_override = {
				bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01_fire",
				bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01_fire",
				bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_01/wpn_bw_ghost_scythe_01_runed_01_fire",
			},
			material_settings = WeaponMaterialSettingsTemplates.purple_glow,
		},
	},
	{
		name = "bw_ghost_scythe_skin_02_magic_01",
		data = {
			description = "bw_ghost_scythe_skin_02_description",
			display_name = "bw_ghost_scythe_skin_02_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_ghost_scythe_02_magic",
			rarity = "magic",
			right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_magic_01",
			template = "staff_scythe",
			right_hand_unit_override = {
				bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_magic_01_fire",
				bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_magic_01_fire",
				bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_magic_01_fire",
			},
		},
	},
	{
		name = "bw_necromancy_staff_skin_02_magic_01",
		data = {
			description = "bw_necromancy_staff_skin_02_magic_01_description",
			display_name = "bw_necromancy_staff_skin_02_magic_01_name",
			hud_icon = "hud_icon_default",
			inventory_icon = "icon_wpn_bw_necromancy_staff_02_magic_01",
			left_hand_unit = "units/weapons/player/wpn_necromancy_skull/wpn_necromancy_skull",
			rarity = "magic",
			right_hand_unit = "units/weapons/player/wpn_bw_necromancy_staff_02/wpn_bw_necromancy_staff_02_magic_01",
			template = "staff_death",
		},
	},
	{
		name = "bw_ghost_scythe_skin_02",
		data = {
			description = "bw_ghost_scythe_skin_02_description",
			display_name = "bw_ghost_scythe_skin_02_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_ghost_scythe_02",
			rarity = "rare",
			right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02",
			template = "staff_scythe",
			right_hand_unit_override = {
				bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_fire",
				bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_fire",
				bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_fire",
			},
		},
	},
	{
		name = "bw_ghost_scythe_skin_02_runed_01",
		data = {
			description = "bw_ghost_scythe_skin_02_runed_01_description",
			display_name = "bw_ghost_scythe_skin_02_runed_01_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_ghost_scythe_02_runed_01",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01",
			template = "staff_scythe",
			right_hand_unit_override = {
				bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01_fire",
				bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01_fire",
				bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01_fire",
			},
		},
	},
	{
		name = "bw_ghost_scythe_skin_02_runed_02",
		data = {
			description = "bw_ghost_scythe_skin_02_runed_02_description",
			display_name = "bw_ghost_scythe_skin_02_runed_02_name",
			display_unit = "units/weapons/weapon_display/display_staff",
			hud_icon = "weapon_generic_icon_staff_3",
			inventory_icon = "icon_wpn_bw_ghost_scythe_02_runed_02",
			rarity = "unique",
			right_hand_unit = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01",
			template = "staff_scythe",
			right_hand_unit_override = {
				bw_adept = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01_fire",
				bw_scholar = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01_fire",
				bw_unchained = "units/weapons/player/wpn_bw_ghost_scythe_02/wpn_bw_ghost_scythe_02_runed_01_fire",
			},
			material_settings = WeaponMaterialSettingsTemplates.purple_glow,
		},
	},
}
local skin_combinations = {
	bw_necromancy_staff_skins = {
		common = {
			"bw_necromancy_staff_skin_01",
		},
		rare = {
			"bw_necromancy_staff_skin_02",
		},
		exotic = {},
		unique = {
			"bw_necromancy_staff_skin_01_runed_01",
			"bw_necromancy_staff_skin_01_runed_02",
			"bw_necromancy_staff_skin_02_runed_01",
			"bw_necromancy_staff_skin_02_runed_02",
		},
		magic = {
			"bw_necromancy_staff_skin_02_magic_01",
		},
	},
	bw_ghost_scythe_skins = {
		common = {
			"bw_ghost_scythe_skin_01",
		},
		rare = {
			"bw_ghost_scythe_skin_02",
		},
		exotic = {},
		unique = {
			"bw_ghost_scythe_skin_01_runed_01",
			"bw_ghost_scythe_skin_01_runed_02",
			"bw_ghost_scythe_skin_02_runed_01",
			"bw_ghost_scythe_skin_02_runed_02",
		},
		magic = {
			"bw_ghost_scythe_skin_02_magic_01",
		},
	},
}
local default_skins = {
	bw_ghost_scythe = "bw_ghost_scythe_skin_01",
	bw_necromancy_staff = "bw_necromancy_staff_skin_01",
}

for _, skin in ipairs(skins) do
	WeaponSkins.skins[skin.name] = skin.data
end

for weapon_name, skin_data in pairs(skin_combinations) do
	if not WeaponSkins.skin_combinations[weapon_name] then
		WeaponSkins.skin_combinations[weapon_name] = {}
	end

	for weapon_rarity, skin_names in pairs(skin_data) do
		if not WeaponSkins.skin_combinations[weapon_name][weapon_rarity] then
			WeaponSkins.skin_combinations[weapon_name][weapon_rarity] = {}
		end

		for _, skin_name in ipairs(skin_names) do
			WeaponSkins.skin_combinations[weapon_name][weapon_rarity][#WeaponSkins.skin_combinations[weapon_name][weapon_rarity] + 1] = skin_name
		end
	end
end

for name, data in pairs(default_skins) do
	WeaponSkins.default_skins[name] = data
end
