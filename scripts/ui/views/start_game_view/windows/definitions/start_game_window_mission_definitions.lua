﻿-- chunkname: @scripts/ui/views/start_game_view/windows/definitions/start_game_window_mission_definitions.lua

local window_default_settings = UISettings.game_start_windows
local window_frame = window_default_settings.frame
local window_size = window_default_settings.size
local window_frame_width = UIFrameSettings[window_frame].texture_sizes.vertical[1]
local window_text_width = window_size[1] - (window_frame_width * 2 + 60)
local scenegraph_definition = {
	root = {
		is_root = true,
		size = {
			1920,
			1080,
		},
		position = {
			0,
			0,
			UILayer.default,
		},
	},
	root_fit = {
		scale = "fit",
		size = {
			1920,
			1080,
		},
		position = {
			0,
			0,
			UILayer.default,
		},
	},
	menu_root = {
		horizontal_alignment = "center",
		parent = "root",
		vertical_alignment = "center",
		size = {
			1920,
			1080,
		},
		position = {
			0,
			0,
			0,
		},
	},
	window = {
		horizontal_alignment = "center",
		parent = "menu_root",
		vertical_alignment = "center",
		size = window_size,
		position = {
			0,
			0,
			1,
		},
	},
	description_text = {
		horizontal_alignment = "center",
		parent = "window",
		vertical_alignment = "bottom",
		size = {
			window_text_width,
			window_size[2] / 2,
		},
		position = {
			0,
			0,
			1,
		},
	},
	adventure_texture = {
		horizontal_alignment = "center",
		parent = "window",
		vertical_alignment = "top",
		size = {
			383,
			383,
		},
		position = {
			0,
			0,
			1,
		},
	},
	map_texture = {
		horizontal_alignment = "center",
		parent = "window",
		vertical_alignment = "top",
		size = {
			250,
			250,
		},
		position = {
			0,
			-70,
			1,
		},
	},
	mission_title_divider = {
		horizontal_alignment = "center",
		parent = "adventure_texture",
		vertical_alignment = "bottom",
		size = {
			264,
			32,
		},
		position = {
			0,
			-20,
			1,
		},
	},
	mission_title = {
		horizontal_alignment = "center",
		parent = "mission_title_divider",
		vertical_alignment = "bottom",
		size = {
			window_text_width,
			50,
		},
		position = {
			0,
			20,
			1,
		},
	},
}
local description_text_style = {
	font_size = 22,
	font_type = "hell_shark",
	horizontal_alignment = "center",
	localize = false,
	use_shadow = true,
	vertical_alignment = "top",
	word_wrap = true,
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2,
	},
}
local mission_text_style = {
	font_size = 36,
	font_type = "hell_shark_header",
	horizontal_alignment = "center",
	localize = false,
	upper_case = true,
	use_shadow = true,
	vertical_alignment = "bottom",
	word_wrap = true,
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2,
	},
}
local widgets = {
	background_fade = UIWidgets.create_simple_texture("options_window_fade_01", "window"),
	background_mask = UIWidgets.create_simple_texture("mask_rect", "window"),
	window = UIWidgets.create_frame("window", window_size, window_frame, 20),
	description_text = UIWidgets.create_simple_text(Localize("start_game_window_specific_desc"), "description_text", nil, nil, description_text_style),
	mission_title = UIWidgets.create_simple_text(Localize("start_game_window_specific_title"), "mission_title", nil, nil, mission_text_style),
	map_texture = UIWidgets.create_simple_texture("map_icon", "map_texture"),
	mission_title_divider = UIWidgets.create_simple_texture("divider_01_top", "mission_title_divider"),
}

return {
	widgets = widgets,
	scenegraph_definition = scenegraph_definition,
}
