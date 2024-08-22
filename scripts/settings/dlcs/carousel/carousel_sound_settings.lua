-- chunkname: @scripts/settings/dlcs/carousel/carousel_sound_settings.lua

local settings = DLCSettings.carousel

settings.dialogue_lookup = {
	"dialogues/generated/lookup_vs_player_vo_pactsworn",
	"dialogues/generated/lookup_vs_player_vo_heroes",
	"dialogues/generated/lookup_vs_mission_giver_pactsworn",
}
settings.auto_load_files_mechanism = {
	versus = {
		"dialogues/generated/vs_player_vo_pactsworn",
		"dialogues/generated/vs_player_vo_heroes",
		"dialogues/generated/vs_mission_giver_pactsworn",
	},
}
settings.dialogue_settings = {}
settings.network_sound_events = {
	"menu_wind_countdown_warning",
	"Play_hud_versus_objective_start",
	"Play_versus_hud_round_end_heroes_fail",
	"Play_versus_hud_round_end_heroes_win",
}
settings.blocked_auto_load_files = {
	carousel_hub = true,
}
