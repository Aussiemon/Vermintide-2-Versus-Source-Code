﻿-- chunkname: @scripts/utils/script_gui.lua

ScriptGUI = ScriptGUI or {}

ScriptGUI.text = function (gui, text, font, font_size, material, pos, color, drop_shadow_color, drop_shadow_offset)
	if drop_shadow_color then
		Gui.text(gui, text, font, font_size, material, pos + drop_shadow_offset, drop_shadow_color)
	end

	Gui.text(gui, text, font, font_size, material, pos, color)
end

ScriptGUI.irect = function (gui, resx, resy, x1, y1, x2, y2, layer, color)
	local bottom_left = Vector3(x1 * resx, (1 - y2) * resy, layer)
	local size = Vector3((x2 - x1) * resx, (y2 - y1) * resy, layer)

	Gui.rect(gui, bottom_left, size, color)
end

ScriptGUI.itext = function (gui, resx, resy, text, font_mtrl, font_size, font, x1, y1, layer, color)
	Gui.text(gui, text, font_mtrl, font_size, font, Vector3(x1 * resx, (1 - y1) * resy, layer), color)
end

ScriptGUI.itext_next_xy = function (gui, resx, resy, text, font_mtrl, font_size, font, x1, y1, layer, color)
	Gui.text(gui, text, font_mtrl, font_size, font, Vector3(x1 * resx, (1 - y1) * resy, layer), color)

	local min, max = Gui.text_extents(gui, text, font_mtrl, font_size)
	local x = (max.x - min.x) / resx + x1
	local y = (max.y - min.y) / resy + y1

	return x, y
end

ScriptGUI.icrect = function (gui, resx, resy, x1, y1, x2, y2, layer, color)
	local bottom_left = Vector3(x1, resy - y2, layer)
	local size = Vector3(x2 - x1, y2 - y1, layer)

	Gui.rect(gui, bottom_left, size, color)
end

ScriptGUI.ictext = function (gui, resx, resy, text, font_mtrl, font_size, font, x1, y1, layer, color)
	Gui.text(gui, text, font_mtrl, font_size, font, Vector3(x1, resy - y1, layer), color)
end

ScriptGUI.hud_line = function (gui, p1, p2, layer, line_width, color)
	line_width = line_width or 3
	layer = layer or 1

	local xd = p2.x - p1.x
	local yd = p2.y - p1.y
	local angle = -math.atan2(yd, xd)
	local size = Vector2(math.sqrt(xd * xd + yd * yd), line_width)
	local transform = Rotation2D(p1, angle)

	Gui.rect_3d(gui, transform, Vector2(0, 0), layer, size, color)
end

ScriptGUI.hud_iline = function (gui, resx, resy, p1, p2, layer, line_width, color)
	local c1 = Vector2(p1.x * resx, (1 - p1.y) * resy)
	local c2 = Vector2(p2.x * resx, (1 - p2.y) * resy)

	ScriptGUI.hud_line(gui, c1, c2, layer, line_width, color)
end
