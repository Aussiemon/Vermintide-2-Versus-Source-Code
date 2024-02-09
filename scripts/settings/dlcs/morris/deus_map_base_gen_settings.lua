﻿-- chunkname: @scripts/settings/dlcs/morris/deus_map_base_gen_settings.lua

DEUS_BASE_MAP_GEN_SETTINGS = DEUS_BASE_MAP_GEN_SETTINGS or {
	default = {
		LABEL_LOOKAHEAD = 2,
		MAX_CONNECTIONS_PER_NODE = 2,
		MAX_IDEAL_NODES = 14,
		MAX_INCOMING_CONNECTIONS_PER_NODE = 3,
		MAX_PATHS = 18,
		MAX_STRAIGHT_LINE = 2,
		MIN_NODES = 10,
		LABELS_AVAILABLE = {
			SIGNATURE = 5,
			TRAVEL = 6,
		},
		LABELLED_NODE_TYPES = {
			SIGNATURE = true,
			TRAVEL = true,
		},
		CONNECTION_VALIDATIONS = {
			"check_if_not_already_connected",
			"check_if_does_not_create_cycle",
			"check_if_not_at_max_incoming_connections",
			"check_if_not_dummy",
			"check_if_layer_above",
			"check_if_does_not_create_crossing",
			"check_if_not_repeating_labels",
		},
		LABEL_VALIDATIONS = {
			"check_if_not_repeating_label",
		},
		CONNECTION_COUNT_VALIDATIONS = {
			{
				"check_if_not_over_limit_of_straight_line",
				"check_if_not_start_node",
			},
			{
				"check_if_not_dummy",
			},
			{},
		},
		CONNECTION_TYPE_WEIGHT_TRANSFORMS = {
			NEW = {
				"discourage_new_nodes_when_near_node_capacity",
			},
			EXISTING = {},
			FINAL = {},
		},
		START_NODE_VALIDATIONS = {
			"force_start_on_start_node",
		},
		FINAL_NODE_VALIDATIONS = {
			"end_with_arena",
			"check_minimum_nodes",
		},
		NODE_TYPE_VALIDATIONS = {
			ANY = {
				"check_allowed_sequences",
			},
			ARENA = {
				"only_on_final",
			},
			SIGNATURE = {},
			TRAVEL = {},
			SHOP = {},
			DUMMY = {
				"check_if_not_creating_dummy_choice",
				"check_if_not_creating_consecutive_dummies",
			},
			START = {},
		},
		NODE_TYPE_SHUFFLERS = {
			"prefer_not_shop_if_already_having_a_shop_choice",
		},
		ALLOWED_SEQUENCES = {
			{
				"START",
				"TRAVEL",
				"TRAVEL",
				"SHOP",
				"SIGNATURE",
				"SHOP",
				"SIGNATURE",
				"ARENA",
			},
			{
				"START",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"SHOP",
				"SIGNATURE",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"TRAVEL",
				"SHOP",
				"SIGNATURE",
				"ARENA",
			},
			{
				"START",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"SHOP",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"TRAVEL",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"TRAVEL",
				"SHOP",
				"SIGNATURE",
				"ARENA",
			},
			{
				"START",
				"TRAVEL",
				"TRAVEL",
				"SHOP",
				"SIGNATURE",
				"SIGNATURE",
				"SHOP",
				"ARENA",
			},
			{
				"START",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"ARENA",
			},
			{
				"START",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"SHOP",
				"SIGNATURE",
				"TRAVEL",
				"TRAVEL",
				"SHOP",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"SIGNATURE",
				"TRAVEL",
				"SHOP",
				"ARENA",
			},
			{
				"START",
				"SIGNATURE",
				"SHOP",
				"TRAVEL",
				"TRAVEL",
				"SIGNATURE",
				"SHOP",
				"ARENA",
			},
		},
	},
}
DEUS_BASE_MAP_GEN_SETTINGS.journey_cave = table.clone(DEUS_BASE_MAP_GEN_SETTINGS.default)
DEUS_BASE_MAP_GEN_SETTINGS.journey_ice = table.clone(DEUS_BASE_MAP_GEN_SETTINGS.default)
DEUS_BASE_MAP_GEN_SETTINGS.journey_citadel = table.clone(DEUS_BASE_MAP_GEN_SETTINGS.default)
DEUS_BASE_MAP_GEN_SETTINGS.journey_citadel.MAX_STRAIGHT_LINE = 2
DEUS_BASE_MAP_GEN_SETTINGS.journey_citadel.MIN_NODES = 9
DEUS_BASE_MAP_GEN_SETTINGS.journey_citadel.FINAL_NODE_VALIDATIONS = {
	"end_with_arena",
	"only_one_signature_level_required_before_final_level",
	"check_minimum_nodes",
}

for name, settings in pairs(DEUS_BASE_MAP_GEN_SETTINGS) do
	settings.name = name
end
