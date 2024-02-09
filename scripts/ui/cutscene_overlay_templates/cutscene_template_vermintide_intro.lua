﻿-- chunkname: @scripts/ui/cutscene_overlay_templates/cutscene_template_vermintide_intro.lua

local utils = require("scripts/ui/cutscene_overlay_templates/cutscene_utils")
local start_layer = 700
local template_settings = {
	template_1 = {
		{
			end_timestamp = "00:06:70",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:02:50",
			text = "vermintide_intro_subtitle_01",
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
			end_timestamp = "00:12:30",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:07:20",
			text = "vermintide_intro_subtitle_02",
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
			end_timestamp = "00:20:60",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:13:90",
			text = "vermintide_intro_subtitle_03",
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
			end_timestamp = "00:27:50",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:21:90",
			text = "vermintide_intro_subtitle_04",
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
			end_timestamp = "00:32:50",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:27:50",
			text = "vermintide_intro_subtitle_05",
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
			end_timestamp = "00:38:40",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:35:50",
			text = "vermintide_intro_subtitle_06",
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
			end_timestamp = "00:41:30",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:38:50",
			text = "vermintide_intro_subtitle_07",
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
			end_timestamp = "00:47:80",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:42:80",
			text = "vermintide_intro_subtitle_08",
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
			end_timestamp = "00:51:30",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:47:80",
			text = "vermintide_intro_subtitle_09",
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
			end_timestamp = "00:58:0",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:53:10",
			text = "vermintide_intro_subtitle_10",
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
