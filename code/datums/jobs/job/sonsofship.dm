/datum/job/somshipside
	selection_color = "#d10000"
	supervisors = "Platoon Leader of SOM Forces"
	faction = "Sons of Mars"
	total_positions = 1
	exp_type_department = EXP_TYPE_ENGINEERING
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

//SOM Leader
/datum/job/somshipside/leader
	title = SOM_LEADER
	paygrade = "SOM3"
	comm_title = "SOML"
	supervisors = "SOM high command"
	skills_type = /datum/skills/captain
	selection_color = "#990000"
	access = ALL_SOM_ACCESS
	minimal_access = ALL_SOM_ACCESS
	display_order = JOB_DISPLAY_ORDER_SOM_LEADER
	outfit = /datum/outfit/job/somshipside/leader
	exp_requirements = XP_REQ_EXPERIENCED
	exp_type = EXP_TYPE_REGULAR_ALL


/datum/job/somshipside/leader/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"As leader of SOM bastards you must destroy fags."})


/datum/outfit/job/somshipside/leader
	name = SOM_LEADER
	jobtype = /datum/job/somshipside/leader

	id = /obj/item/card/id/dogtag/som
	belt = /obj/item/storage/belt/marine/som
	ears = /obj/item/radio/headset/distress/som
	w_uniform = /obj/item/clothing/under/som/leader
	shoes = /obj/item/clothing/shoes/marine/som




//SOM Heavy
/datum/job/somshipside/heavy
	title = SOM_HEAVY
	paygrade = "SOM3"
	comm_title = "SOMH"
	total_positions = 4
	access = HEAVY_SOM_ACCESS
	minimal_access = HEAVY_SOM_ACCESS
	skills_type = /datum/skills/specialist/upp
	display_order = JOB_DISPLAY_ORDER_SOM_HEAVY
	outfit = /datum/outfit/job/somshipside/heavy


/datum/job/somshipside/pilot/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"Your job is to shoot."})


/datum/outfit/job/somshipside/heavy
	name = SOM_HEAVY
	jobtype = /datum/job/somshipside/heavy

	id = /obj/item/card/id/dogtag/som
	w_uniform = /obj/item/clothing/under/som/veteran
	shoes = /obj/item/clothing/shoes/marine/som


//SOM Medic
/datum/job/somshipside/medic
	title = SOM_MEDIC
	paygrade = "SOM2"
	total_positions = 16
	comm_title = "SOMM"
	access = MEDIC_SOM_ACCESS
	minimal_access = MEDIC_SOM_ACCESS
	skills_type = /datum/skills/combat_medic/crafty
	outfit = /datum/outfit/job/somshipside/medic
	exp_requirements = XP_REQ_INTERMEDIATE
	exp_type = EXP_TYPE_REGULAR_ALL
	display_order = JOB_DISPLAY_ORDER_SOM_MEDIC


/datum/job/somshipside/medic/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"Heal."})


/datum/outfit/job/somshipside/medic
	name = SOM_MEDIC
	jobtype = /datum/job/somshipside/medic

	id = /obj/item/card/id/dogtag/som
	w_uniform = /obj/item/clothing/under/som/medic
	shoes = /obj/item/clothing/shoes/marine/som



//SOM Private
/datum/job/somshipside/private
	title = SOM_PRIVATE
	comm_title = "SOMP"
	paygrade = "SOM1"
	total_positions = -1
	supervisors = "Platoon Leader of SOM Forces"
	access = PRIVATE_SOM_ACCESS
	minimal_access = PRIVATE_SOM_ACCESS
	skills_type = /datum/skills/crafty
	display_order = JOB_DISPLAY_ORDER_SOM_PRIVATE
	outfit = /datum/outfit/job/somshipside/private


/datum/job/somshipside/private/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"Your job is killing bastards."})


/datum/outfit/job/somshipside/private
	name = SOM_PRIVATE
	jobtype = /datum/job/somshipside/private

	id = /obj/item/card/id/dogtag/som
	w_uniform = /obj/item/clothing/under/som
	shoes = /obj/item/clothing/shoes/marine/som