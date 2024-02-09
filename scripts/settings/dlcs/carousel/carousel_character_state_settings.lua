﻿-- chunkname: @scripts/settings/dlcs/carousel/carousel_character_state_settings.lua

local settings = DLCSettings.carousel

settings.character_states = {
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_catapulted",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_animated_jump",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_climbing",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_tunneling",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_spawning",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_dead",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_dodging",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_in_vortex",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_inspecting",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_interacting",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_jump_across",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_leaping",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_lunging",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_stunned",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_using_transport",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/enemy_character_state_staggered",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_spawn/chaos_spawn_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_spawn/chaos_spawn_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_spawn/chaos_spawn_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_spawn/chaos_spawn_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_troll/chaos_troll_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_troll/chaos_troll_state_vomiting",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_troll/chaos_troll_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_troll/chaos_troll_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/chaos_troll/chaos_troll_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_foff",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_pinning",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_pouncing",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_prowling",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/gutter_runner/gutter_runner_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_dragging",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_equipping",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_grabbing",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_hoisting",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/packmaster/packmaster_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/poison_wind_globadier/poison_wind_globadier_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/poison_wind_globadier/poison_wind_globadier_state_throwing",
	"scripts/unit_extensions/default_player_unit/enemy_states/poison_wind_globadier/poison_wind_globadier_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/poison_wind_globadier/poison_wind_globadier_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/poison_wind_globadier/poison_wind_globadier_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/rat_ogre/rat_ogre_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/rat_ogre/rat_ogre_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/rat_ogre/rat_ogre_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/rat_ogre/rat_ogre_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/ratling_gunner/ratling_gunner_state_reloading",
	"scripts/unit_extensions/default_player_unit/enemy_states/ratling_gunner/ratling_gunner_state_firing",
	"scripts/unit_extensions/default_player_unit/enemy_states/ratling_gunner/ratling_gunner_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/ratling_gunner/ratling_gunner_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/ratling_gunner/ratling_gunner_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/ratling_gunner/ratling_gunner_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/stormfiend/stormfiend_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/stormfiend/stormfiend_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/stormfiend/stormfiend_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/stormfiend/stormfiend_state_falling",
	"scripts/unit_extensions/default_player_unit/enemy_states/warpfire_thrower/warpfire_thrower_state_firing",
	"scripts/unit_extensions/default_player_unit/enemy_states/warpfire_thrower/warpfire_thrower_state_standing",
	"scripts/unit_extensions/default_player_unit/enemy_states/warpfire_thrower/warpfire_thrower_state_walking",
	"scripts/unit_extensions/default_player_unit/enemy_states/warpfire_thrower/warpfire_thrower_state_jumping",
	"scripts/unit_extensions/default_player_unit/enemy_states/warpfire_thrower/warpfire_thrower_state_falling",
}
