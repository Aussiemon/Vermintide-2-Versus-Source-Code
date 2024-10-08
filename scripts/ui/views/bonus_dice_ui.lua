﻿-- chunkname: @scripts/ui/views/bonus_dice_ui.lua

local definitions = local_require("scripts/ui/views/bonus_dice_ui_definitions")
local math_ease_in_cubic = math.easeInCubic

BonusDiceUI = class(BonusDiceUI)

BonusDiceUI.init = function (self, parent, ingame_ui_context)
	self._parent = parent
	self.ui_renderer = ingame_ui_context.ui_renderer
	self.ingame_ui = ingame_ui_context.ingame_ui
	self.input_manager = ingame_ui_context.input_manager
	self.dice_keeper = ingame_ui_context.dice_keeper
	self.active_dice_widgets = 0
	self.dice_widgets = {}
	self.die_types = {}
	self.die_count = {}

	local dice_keeper = ingame_ui_context.dice_keeper
	local dice = dice_keeper:get_dice()
	local i = 0

	for die_type, _ in pairs(dice) do
		i = i + 1
		self.die_types[i] = die_type
		self.die_count[die_type] = 0
	end

	self.die_types_n = i

	self:create_ui_elements()
end

BonusDiceUI.create_ui_elements = function (self)
	self.ui_scenegraph = UISceneGraph.init_scenegraph(definitions.scenegraph_definition)

	for i = 1, 10 do
		self.dice_widgets[i] = UIWidget.init(definitions.dice_widget_definition)
	end
end

BonusDiceUI.add_die = function (self, die_type)
	local active_dice_widgets = self.active_dice_widgets + 1
	local widget = self.dice_widgets[active_dice_widgets] or UIWidget.init(definitions.dice_widget_definition)
	local num_dice_columns = definitions.num_dice_columns
	local size = definitions.dice_size
	local gap = definitions.gap
	local offset_x = 0
	local offset_y = 0
	local x_times = (active_dice_widgets - 1) % num_dice_columns
	local y_times = math.floor((active_dice_widgets - 1) / num_dice_columns)

	offset_x = x_times * size[1] + gap * x_times
	offset_y = -(y_times * size[2] + gap * y_times)
	widget.style.offset[1] = offset_x
	widget.style.offset[2] = offset_y
	widget.content.texture_id = definitions.get_die_texture(die_type)

	UIWidget.animate(widget, UIAnimation.init(UIAnimation.function_by_time, widget.style.color, 1, 0, 255, 1, math_ease_in_cubic))

	self.die_count[die_type] = self.die_count[die_type] + 1
	self.dice_widgets[active_dice_widgets] = widget
	self.active_dice_widgets = active_dice_widgets
end

BonusDiceUI.destroy = function (self)
	self.dice_keeper = nil
end

BonusDiceUI.update = function (self, dt)
	do return end

	if DebugKeyHandler.key_pressed("f3", "asdasd", "dadsa") then
		self.dice_keeper:add_die("normal", 1)
	end

	self:update_dices()

	if self.active_dice_widgets > 0 then
		self:draw(dt)
	end
end

BonusDiceUI.update_dices = function (self)
	local dice_keeper = self.dice_keeper
	local die_count = self.die_count
	local die_types = self.die_types
	local die_types_n = self.die_types_n

	for i = 1, die_types_n do
		local die_type = die_types[i]
		local count = die_count[die_type]
		local new = dice_keeper:num_new_dices(die_type)
		local diff = new - count

		if diff > 0 then
			for j = 1, diff do
				self:add_die(die_type)
			end
		end
	end
end

BonusDiceUI.draw = function (self, dt)
	local ui_renderer = self.ui_renderer
	local ui_scenegraph = self.ui_scenegraph
	local input_service = self.input_manager:get_service("ingame_menu")

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt)

	local dice_widgets = self.dice_widgets
	local active_dice_widgets = self.active_dice_widgets

	for i = 1, active_dice_widgets do
		UIRenderer.draw_widget(ui_renderer, dice_widgets[i])
	end

	UIRenderer.end_pass(ui_renderer)
end
