-- chunkname: @scripts/settings/versus_horde_ability_settings.lua

local horde_ability_settings = {
	cooldown = 300,
	team_size_difference_recharge_modifier = {
		1.3,
		1.75,
		2.5,
	},
	compositions_per_faction = {
		beastmen = "versus_horde_ability_beastmen",
		chaos = "versus_horde_ability_chaos",
		skaven = "versus_horde_ability_skaven",
	},
	recharge_boosts = {
		actions = {
			gutter_runner_pinned = 6,
			hero_downed = 10,
			pack_master_grab = 6,
			pack_master_hoist = 24,
		},
		damage_sources = {
			vomit_face = 1.4,
			vs_chaos_troll_axe = 0.4,
			vs_gutter_runner = 1.2,
			vs_packmaster = 1.2,
			vs_poison_wind_globadier = 1,
			vs_ratling_gunner_gun = 0.15,
			vs_warpfire_thrower = 0.15,
		},
	},
}

return horde_ability_settings
