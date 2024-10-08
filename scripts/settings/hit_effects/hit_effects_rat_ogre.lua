﻿-- chunkname: @scripts/settings/hit_effects/hit_effects_rat_ogre.lua

HitEffectsRatOgre = {
	default = {
		armour_type = "flesh",
		husk_hit_effect_name = "fx/impact_blood",
		extra_conditions = {
			death = false,
		},
		animations = {
			"hit_reaction",
		},
	},
	burn = {
		inherits = "default",
		extra_conditions = {
			damage_type = {
				"burning_tank",
				"heavy_burning_tank",
				"burning_stab_fencer",
				"burn",
				"burn_sniper",
				"burn_carbine",
				"burn_machinegun",
				"drakefire_shot",
				"drakegun",
				"drakegun_glance",
				"fire_grenade",
				"fire_grenade_glance",
			},
		},
		animations = {
			"hit_reaction",
		},
	},
	default_head = {
		armour_type = "flesh",
		husk_hit_effect_name = "fx/impact_blood",
		inherits = "default",
		extra_conditions = {
			hit_zone = {
				"neck",
				"head",
			},
		},
		animations = {
			"offset_hit_reaction_head_left",
			"offset_hit_reaction_head_right",
			"offset_hit_reaction_head_up",
			"offset_hit_reaction_head_down",
		},
	},
	default_left_leg = {
		armour_type = "flesh",
		husk_hit_effect_name = "fx/impact_blood",
		inherits = "default",
		extra_conditions = {
			hit_zone = {
				"left_leg",
			},
		},
		animations = {
			"offset_hit_reaction_leg_left",
		},
	},
	default_right_leg = {
		armour_type = "flesh",
		husk_hit_effect_name = "fx/impact_blood",
		inherits = "default",
		extra_conditions = {
			hit_zone = {
				"right_leg",
			},
		},
		animations = {
			"offset_hit_reaction_leg_right",
		},
	},
	default_left_arm = {
		armour_type = "flesh",
		husk_hit_effect_name = "fx/impact_blood",
		inherits = "default",
		extra_conditions = {
			hit_zone = {
				"left_arm",
			},
		},
		animations = {
			"offset_hit_reaction_arm_left",
		},
	},
	default_right_arm = {
		armour_type = "flesh",
		husk_hit_effect_name = "fx/impact_blood",
		inherits = "default",
		extra_conditions = {
			hit_zone = {
				"right_arm",
			},
		},
		animations = {
			"offset_hit_reaction_arm_right",
		},
	},
	default_tail = {
		armour_type = "flesh",
		husk_hit_effect_name = "fx/impact_blood",
		inherits = "default",
		extra_conditions = {
			hit_zone = {
				"tail",
			},
		},
		animations = {
			"offset_hit_reaction_tail",
		},
	},
	default_death = {
		inherits = "default",
		extra_conditions = {
			death = true,
		},
		animations = {
			"death",
			"death_forward",
			"death_left",
			"death_right",
			"death_backward",
		},
		push = {
			distal_force = 50,
			lateral_force = 0,
			vertical_force = 50,
		},
	},
	heavy_blunt_tank_death = {
		inherits = "default_death",
		extra_conditions = {
			death = true,
			damage_type = {
				"heavy_blunt_tank",
			},
		},
		animations = {
			"ragdoll",
		},
		push = {
			distal_force = 60,
			lateral_force = 120,
			vertical_force = 60,
		},
	},
	burn_death = {
		inherits = "default_death",
		extra_conditions = {
			damage_type = {
				"drakegun_shot",
				"drakegun",
				"drakegun_glance",
			},
		},
		timed_status = StatusEffectNames.burning,
	},
	burn_death_conjured = {
		inherits = "default_death",
		extra_conditions = {
			damage_type = {
				"burning_tank",
				"heavy_burning_tank",
				"burning_stab_fencer",
				"burn",
				"burn_sniper",
				"burn_carbine",
				"burn_machinegun",
			},
		},
		timed_status = StatusEffectNames.burning,
	},
	push = {
		extra_conditions = {
			damage_type = "push",
		},
	},
	gib_killing_blow_death = {
		inherits = "default",
		extra_conditions = {
			damage_type = "killing_blow",
			death = true,
		},
		animations = {
			"ragdoll",
		},
	},
	forced_kill = {
		extra_conditions = {
			damage_type = "forced",
			death = true,
		},
		animations = {
			"ragdoll",
		},
	},
}
HitEffectsRatOgre = table.create_copy(HitEffectsRatOgre, HitEffectsRatOgre)
