﻿-- chunkname: @scripts/ui/cutscene_overlay_templates/cutscene_template_woods_intro.lua

local utils = require("scripts/ui/cutscene_overlay_templates/cutscene_utils")
local start_layer = 700
local template_settings = {
	template_1 = {
		{
			end_timestamp = "00:08:80",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:01:50",
			text = "nli_woods_05",
			vertical_alignment = "bottom",
			word_wrap = true,
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer,
			},
		},
		{
			end_timestamp = "00:16:40",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:13:10",
			text = "nli_woods_01",
			vertical_alignment = "bottom",
			word_wrap = true,
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer,
			},
		},
		{
			end_timestamp = "00:25:70",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:18:80",
			text = "nli_woods_02alt",
			vertical_alignment = "bottom",
			word_wrap = true,
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer,
			},
		},
		{
			end_timestamp = "00:34:70",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:30:30",
			text = "nli_woods_07",
			vertical_alignment = "bottom",
			word_wrap = true,
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer,
			},
		},
		{
			end_timestamp = "00:39:70",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:36:30",
			text = "nli_woods_08",
			vertical_alignment = "bottom",
			word_wrap = true,
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer,
			},
		},
		{
			end_timestamp = "01:40:60",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "01:38:60",
			text = "pwe_st_battlecry_02",
			vertical_alignment = "bottom",
			word_wrap = true,
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer,
			},
		},
	},
}

utils.convert_string_timestamps_to_seconds(template_settings)

return {
	templates = template_settings,
}