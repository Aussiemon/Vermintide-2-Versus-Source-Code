-- chunkname: @scripts/game_state/title_screen_substates/win32/state_title_screen_main_menu_settings.lua

local function create_menu_layout(self)
	return {
		{
			text = "start_game_menu_button_name",
			callback = callback(self, "_check_prologue_status"),
			layout = {
				{
					description = "start_menu_vs_description",
					logo_texture = "versus_logo",
					tag = "start_menu_vs_tag",
					text = "vs_ui_versus_tag",
					video = "versus",
					conditional_func = function ()
						if not GameSettingsDevelopment.use_backend then
							return true
						end

						local backend_manager = Managers.backend
						local title_settings = backend_manager:get_title_settings()
						local versus_settings = title_settings.versus

						return versus_settings and versus_settings.active
					end,
					callback = function ()
						Managers.music:trigger_event("Stop_menu_screen_music")

						local hub_level = VersusMechanism.get_starting_level()

						self:_start_game(hub_level)
					end,
				},
			},
		},
		{
			text = "start_menu_options",
			callback = callback(self, "_activate_view", "options_view"),
		},
		{
			text = "start_menu_tutorial",
			callback = callback(self, "_start_game", "prologue"),
		},
		{
			text = "start_menu_credits",
			callback = callback(self, "_activate_view", "credits_view"),
		},
		{
			text = "menu_quit",
			callback = callback(self, "_quit_game"),
		},
	}
end

return {
	create_menu_layout = create_menu_layout,
}
