//Game preferences

/datum/preference/toggle/enable_dopplerboops
    category = PREFERENCE_CATEGORY_GAME_PREFERENCES
    default_value = TRUE
    savefile_key = "hear_dopplerboop"
    savefile_identifier = PREFERENCE_PLAYER

//Character preferences

/datum/preference/choiced/voice_type
	savefile_key = "voice_type"
	savefile_identifier = PREFERENCE_CHARACTER
	main_feature_name = "Voice type"
	category = PREFERENCE_CATEGORY_NON_CONTEXTUAL
	priority = PREFERENCE_PRIORITY_NAME_MODIFICATIONS

/datum/preference/choiced/voice_type/init_possible_values()
	return GLOB.dopplerboop_voice_types

/datum/preference/choiced/voice_type/apply_to_human(mob/living/carbon/human/target, value)
	target.voice_type = value
