﻿-- chunkname: @scripts/ui/cutscene_overlay_templates/cutscene_template_cog_intro.lua

local utils = require("scripts/ui/cutscene_overlay_templates/cutscene_utils")
local start_layer = 700
local template_settings = {
	template_1 = {
		{
			end_timestamp = "00:07:85",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:03:80",
			text = "pwe_cog_trailer_01",
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
			end_timestamp = "00:11:35",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:07:83",
			text = "pbw_cog_trailer_01",
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
			end_timestamp = "00:22:37",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:15:01",
			text = "pdr_cog_trailer_01",
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
			end_timestamp = "00:26:00",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:22:77",
			text = "pdr_cog_trailer_02",
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
			end_timestamp = "00:36:70",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:26:02",
			text = "pdr_cog_trailer_03",
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
			end_timestamp = "00:48:66",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:46:25",
			text = "pes_cog_trailer_01",
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
			end_timestamp = "00:55:05",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:52:76",
			text = "pdr_cog_trailer_03_",
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
			end_timestamp = "00:58:86",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:56:43",
			text = "pdr_cog_trailer_04",
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
			end_timestamp = "00:73:20",
			fade_in_duration = 0.3,
			fade_out_duration = 0.3,
			font_size = 30,
			font_type = "hell_shark",
			font_upper_case = false,
			horizontal_alignment = "center",
			localize = true,
			start_timestamp = "00:71:40",
			text = "pdr_cog_trailer_05",
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