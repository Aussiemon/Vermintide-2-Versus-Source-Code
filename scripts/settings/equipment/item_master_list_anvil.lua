﻿-- chunkname: @scripts/settings/equipment/item_master_list_anvil.lua

ItemMasterList.bw_1h_flail_flaming = {
	description = "bw_1h_flail_flaming_skin_01_description",
	display_name = "bw_1h_flail_flaming_skin_01_name",
	has_power_level = true,
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_brw_flaming_flail_01",
	item_type = "bw_1h_flail_flaming",
	property_table_name = "melee",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_brw_flaming_flail_01/wpn_brw_flaming_flail_01",
	skin_combination_table = "bw_1h_flail_flaming_skins",
	slot_type = "melee",
	template = "one_handed_flails_flaming_template",
	trait_table_name = "melee",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
	},
}
ItemMasterList.dr_1h_throwing_axes = {
	ammo_unit = "units/weapons/player/wpn_dw_thrown_axe_01_t1/wpn_dw_thrown_axe_01_t1",
	description = "dr_1h_throwing_axes_skin_01_description",
	display_name = "dr_1h_throwing_axes_skin_01_name",
	has_power_level = true,
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_dw_thrown_axe_01_t1",
	is_ammo_weapon = true,
	item_type = "dr_1h_throwing_axes",
	link_pickup_template_name = "link_ammo_throwing_axe_01_t1",
	pickup_template_name = "ammo_throwing_axe_01_t1",
	projectile_units_template = "throwing_axe_01_t1",
	property_table_name = "ranged",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	skin_combination_table = "dr_1h_throwing_axes_skins",
	slot_type = "ranged",
	template = "one_handed_throwing_axes_template",
	trait_table_name = "ranged_ammo",
	can_wield = {
		"dr_slayer",
		"dr_ranger",
	},
}
ItemMasterList.es_2h_heavy_spear = {
	description = "es_2h_heavy_spear_skin_01_description",
	display_name = "es_2h_heavy_spear_skin_01_name",
	has_power_level = true,
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_emp_boar_spear_01",
	item_type = "es_2h_heavy_spear",
	property_table_name = "melee",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_emp_boar_spear_01/wpn_emp_boar_spear_01",
	skin_combination_table = "es_2h_heavy_spear_skins",
	slot_type = "melee",
	template = "two_handed_heavy_spears_template",
	trait_table_name = "melee",
	can_wield = {
		"es_huntsman",
		"es_mercenary",
	},
}
ItemMasterList.we_1h_spears_shield = {
	description = "we_1h_spears_shield_skin_01_description",
	display_name = "we_1h_spears_shield_skin_01_name",
	has_power_level = true,
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_we_spear_01_icon_we_shield_01",
	item_type = "we_1h_spears_shield",
	left_hand_unit = "units/weapons/player/wpn_we_shield_01/wpn_we_shield_01",
	property_table_name = "melee",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_we_spear_01/wpn_we_spear_01",
	skin_combination_table = "we_1h_spears_shield_skins",
	slot_type = "melee",
	template = "one_handed_spears_shield_template",
	trait_table_name = "melee",
	can_wield = {
		"we_maidenguard",
	},
}
ItemMasterList.wh_2h_billhook = {
	description = "wh_2h_billhook_skin_01_description",
	display_name = "wh_2h_billhook_skin_01_name",
	has_power_level = true,
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_wh_billhook_01",
	item_type = "wh_2h_billhook",
	property_table_name = "melee",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_wh_billhook_01/wpn_wh_billhook_01",
	skin_combination_table = "wh_2h_billhook_skins",
	slot_type = "melee",
	template = "two_handed_billhooks_template",
	trait_table_name = "melee",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain",
	},
}
ItemMasterList.bw_1h_flail_flaming_skin = {
	base_skin_item = true,
	information_text = "information_weapon_skin",
	item_type = "weapon_skin",
	matching_item_key = "bw_1h_flail_flaming",
	rarity = "plentiful",
	slot_type = "weapon_skin",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
	},
}
ItemMasterList.bw_1h_flail_flaming_skin_01 = {
	description = "bw_1h_flail_flaming_skin_01_description",
	display_name = "bw_1h_flail_flaming_skin_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_brw_flaming_flail_01",
	item_type = "weapon_skin",
	matching_item_key = "bw_1h_flail_flaming",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_brw_flaming_flail_01/wpn_brw_flaming_flail_01",
	slot_type = "weapon_skin",
	template = "one_handed_flails_flaming_template",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
	},
}
ItemMasterList.bw_1h_flail_flaming_skin_01_runed_01 = {
	description = "bw_1h_flail_flaming_skin_01_runed_01_description",
	display_name = "bw_1h_flail_flaming_skin_01_runed_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_brw_flaming_flail_01_runed_01",
	item_type = "weapon_skin",
	matching_item_key = "bw_1h_flail_flaming",
	rarity = "unique",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_brw_flaming_flail_01/wpn_brw_flaming_flail_01_runed_01",
	slot_type = "weapon_skin",
	template = "one_handed_flails_flaming_template",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
	},
}
ItemMasterList.bw_1h_flail_flaming_skin_02 = {
	description = "bw_1h_flail_flaming_skin_02_description",
	display_name = "bw_1h_flail_flaming_skin_02_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_brw_flaming_flail_02",
	item_type = "weapon_skin",
	matching_item_key = "bw_1h_flail_flaming",
	rarity = "exotic",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_brw_flaming_flail_02/wpn_brw_flaming_flail_02",
	slot_type = "weapon_skin",
	template = "one_handed_flails_flaming_template",
	can_wield = {
		"bw_scholar",
		"bw_adept",
		"bw_unchained",
	},
}
ItemMasterList.dr_1h_throwing_axes_skin = {
	base_skin_item = true,
	information_text = "information_weapon_skin",
	item_type = "weapon_skin",
	matching_item_key = "dr_1h_throwing_axes",
	rarity = "plentiful",
	slot_type = "weapon_skin",
	can_wield = {
		"dr_ironbreaker",
		"dr_slayer",
		"dr_ranger",
	},
}
ItemMasterList.dr_1h_throwing_axes_skin_01 = {
	description = "dr_1h_throwing_axes_skin_01_description",
	display_name = "dr_1h_throwing_axes_skin_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_dw_thrown_axe_01_t1",
	is_ammo_weapon = true,
	item_type = "weapon_skin",
	matching_item_key = "dr_1h_throwing_axes",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	slot_type = "weapon_skin",
	template = "one_handed_throwing_axes_template",
	can_wield = {
		"dr_slayer",
		"dr_ranger",
	},
}
ItemMasterList.dr_1h_throwing_axes_skin_01_runed_01 = {
	description = "dr_1h_throwing_axes_skin_01_runed_01_description",
	display_name = "dr_1h_throwing_axes_skin_01_runed_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_dw_thrown_axe_01_t1_runed_01",
	is_ammo_weapon = true,
	item_type = "weapon_skin",
	matching_item_key = "dr_1h_throwing_axes",
	rarity = "unique",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	slot_type = "weapon_skin",
	template = "one_handed_throwing_axes_template",
	can_wield = {
		"dr_slayer",
		"dr_ranger",
	},
}
ItemMasterList.dr_1h_throwing_axes_skin_02 = {
	description = "dr_1h_throwing_axes_skin_02_description",
	display_name = "dr_1h_throwing_axes_skin_02_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_dw_thrown_axe_01_t2",
	is_ammo_weapon = true,
	item_type = "weapon_skin",
	matching_item_key = "dr_1h_throwing_axes",
	rarity = "exotic",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_invisible_weapon",
	slot_type = "weapon_skin",
	template = "one_handed_throwing_axes_template",
	can_wield = {
		"dr_slayer",
		"dr_ranger",
	},
}
ItemMasterList.es_2h_heavy_spear_skin = {
	base_skin_item = true,
	information_text = "information_weapon_skin",
	item_type = "weapon_skin",
	matching_item_key = "es_2h_heavy_spear",
	rarity = "plentiful",
	slot_type = "weapon_skin",
	can_wield = {
		"es_huntsman",
		"es_knight",
		"es_mercenary",
	},
}
ItemMasterList.es_2h_heavy_spear_skin_01 = {
	description = "es_2h_heavy_spear_skin_01_description",
	display_name = "es_2h_heavy_spear_skin_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_emp_boar_spear_01",
	item_type = "weapon_skin",
	matching_item_key = "es_2h_heavy_spear",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_emp_boar_spear_01/wpn_emp_boar_spear_01",
	slot_type = "weapon_skin",
	template = "two_handed_heavy_spears_template",
	can_wield = {
		"es_huntsman",
		"es_mercenary",
	},
}
ItemMasterList.es_2h_heavy_spear_skin_02 = {
	description = "es_2h_heavy_spear_skin_02_description",
	display_name = "es_2h_heavy_spear_skin_02_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_emp_boar_spear_02",
	item_type = "weapon_skin",
	matching_item_key = "es_2h_heavy_spear",
	rarity = "exotic",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_emp_boar_spear_02/wpn_emp_boar_spear_02",
	slot_type = "weapon_skin",
	template = "two_handed_heavy_spears_template",
	can_wield = {
		"es_huntsman",
		"es_mercenary",
	},
}
ItemMasterList.es_2h_heavy_spear_skin_01_runed_01 = {
	description = "es_2h_heavy_spear_skin_01_runed_01_description",
	display_name = "es_2h_heavy_spear_skin_01_runed_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_emp_boar_spear_01_runed_01",
	item_type = "weapon_skin",
	matching_item_key = "es_2h_heavy_spear",
	rarity = "unique",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_emp_boar_spear_01/wpn_emp_boar_spear_01_runed_01",
	slot_type = "weapon_skin",
	template = "two_handed_heavy_spears_template",
	can_wield = {
		"es_huntsman",
		"es_mercenary",
	},
}
ItemMasterList.we_1h_spears_shield_skin = {
	base_skin_item = true,
	information_text = "information_weapon_skin",
	item_type = "weapon_skin",
	matching_item_key = "we_1h_spears_shield",
	rarity = "plentiful",
	slot_type = "weapon_skin",
	can_wield = {
		"we_waywatcher",
		"we_maidenguard",
		"we_shade",
	},
}
ItemMasterList.we_1h_spears_shield_skin_01 = {
	description = "we_1h_spears_shield_skin_01_description",
	display_name = "we_1h_spears_shield_skin_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_we_spear_01_icon_we_shield_01",
	item_type = "weapon_skin",
	left_hand_unit = "units/weapons/player/wpn_we_shield_01/wpn_we_shield_01",
	matching_item_key = "we_1h_spears_shield",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_we_spear_01/wpn_we_spear_01",
	slot_type = "weapon_skin",
	template = "one_handed_spears_shield_template",
	can_wield = {
		"we_maidenguard",
	},
}
ItemMasterList.we_1h_spears_shield_skin_01_runed_01 = {
	description = "we_1h_spears_shield_skin_01_runed_01_description",
	display_name = "we_1h_spears_shield_skin_01_runed_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_we_spear_03_icon_we_shield_01_runed_01",
	item_type = "weapon_skin",
	left_hand_unit = "units/weapons/player/wpn_we_shield_01/wpn_we_shield_01_runed_01",
	matching_item_key = "we_1h_spears_shield",
	rarity = "unique",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_we_spear_03/wpn_we_spear_03",
	slot_type = "weapon_skin",
	template = "one_handed_spears_shield_template",
	can_wield = {
		"we_maidenguard",
	},
}
ItemMasterList.we_1h_spears_shield_skin_02 = {
	description = "we_1h_spears_shield_skin_02_description",
	display_name = "we_1h_spears_shield_skin_02_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_we_spear_02_icon_we_shield_02",
	item_type = "weapon_skin",
	left_hand_unit = "units/weapons/player/wpn_we_shield_02/wpn_we_shield_02",
	matching_item_key = "we_1h_spears_shield",
	rarity = "exotic",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_we_spear_02/wpn_we_spear_02",
	slot_type = "weapon_skin",
	template = "one_handed_spears_shield_template",
	can_wield = {
		"we_maidenguard",
	},
}
ItemMasterList.wh_2h_billhook_skin = {
	base_skin_item = true,
	information_text = "information_weapon_skin",
	item_type = "weapon_skin",
	matching_item_key = "wh_2h_billhook",
	rarity = "plentiful",
	slot_type = "weapon_skin",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain",
	},
}
ItemMasterList.wh_2h_billhook_skin_01 = {
	description = "wh_2h_billhook_skin_01_description",
	display_name = "wh_2h_billhook_skin_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_wh_billhook_01",
	item_type = "weapon_skin",
	matching_item_key = "wh_2h_billhook",
	rarity = "plentiful",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_wh_billhook_01/wpn_wh_billhook_01",
	slot_type = "weapon_skin",
	template = "two_handed_billhooks_template",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain",
	},
}
ItemMasterList.wh_2h_billhook_skin_01_runed_01 = {
	description = "wh_2h_billhook_skin_01_runed_01_description",
	display_name = "wh_2h_billhook_skin_01_runed_01_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_wh_billhook_01_runed_01",
	item_type = "weapon_skin",
	matching_item_key = "wh_2h_billhook",
	rarity = "unique",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_wh_billhook_01/wpn_wh_billhook_01_runed_01",
	slot_type = "weapon_skin",
	template = "two_handed_billhooks_template",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain",
	},
}
ItemMasterList.wh_2h_billhook_skin_02 = {
	description = "wh_2h_billhook_skin_02_description",
	display_name = "wh_2h_billhook_skin_02_name",
	hud_icon = "weapon_generic_icon_falken",
	inventory_icon = "icon_wh_billhook_02",
	item_type = "weapon_skin",
	matching_item_key = "wh_2h_billhook",
	rarity = "exotic",
	required_dlc = "scorpion",
	right_hand_unit = "units/weapons/player/wpn_wh_billhook_02/wpn_wh_billhook_02",
	slot_type = "weapon_skin",
	template = "two_handed_billhooks_template",
	can_wield = {
		"wh_zealot",
		"wh_bountyhunter",
		"wh_captain",
	},
}