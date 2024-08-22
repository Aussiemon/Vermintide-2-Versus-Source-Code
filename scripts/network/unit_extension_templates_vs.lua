-- chunkname: @scripts/network/unit_extension_templates_vs.lua

local unit_templates_vs = {
	player_unit_dark_pact = {
		base_template = "player_unit_base",
		go_type = "player_unit",
		self_owned_extensions = {
			"DarkPactStatusExtension",
			"DialogueActorExtension",
			"GenericDialogueContextExtension",
			"PlayerProximityExtension",
			"SurroundingObserverExtension",
			"PlayerUnitGhostModeExtension",
			"DarkPactPlayerOutlineExtension",
			"ProjectileLinkerExtension",
			"VersusHordeAbilityExtension",
		},
		self_owned_extensions_server = {
			"DarkPactStatusExtension",
			"DialogueActorExtension",
			"HealthTriggerExtension",
			"GenericDialogueContextExtension",
			"PlayerProximityExtension",
			"SurroundingObserverExtension",
			"PlayerUnitGhostModeExtension",
			"DarkPactPlayerOutlineExtension",
			"ProjectileLinkerExtension",
			"VersusHordeAbilityExtension",
		},
		husk_extensions = {
			"DarkPactStatusExtension",
			"DialogueActorExtension",
			"GenericDialogueContextExtension",
			"PlayerProximityExtension",
			"SurroundingObserverExtension",
			"PlayerHuskGhostModeExtension",
			"DarkPactPlayerHuskOutlineExtension",
			"ProjectileLinkerExtension",
			"VersusHordeAbilityHuskExtension",
		},
		husk_extensions_server = {
			"DarkPactStatusExtension",
			"DialogueActorExtension",
			"HealthTriggerExtension",
			"GenericDialogueContextExtension",
			"PlayerProximityExtension",
			"SurroundingObserverExtension",
			"PlayerHuskGhostModeExtension",
			"DarkPactPlayerHuskOutlineExtension",
			"ProjectileLinkerExtension",
			"VersusHordeAbilityExtension",
		},
	},
	versus_dark_pact_climbing_interaction_unit = {
		go_type = "versus_dark_pact_climbing_interaction_unit",
		self_owned_extensions = {
			"LocalInteractableExtension",
			"GenericOutlineExtension",
			"DarkPactClimbingExtension",
		},
	},
}

return unit_templates_vs
