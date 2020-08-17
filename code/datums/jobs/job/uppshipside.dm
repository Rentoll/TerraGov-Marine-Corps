/datum/job/uppshipside
	selection_color = "#00b841"
	supervisors = "Platoon Leader of UPP Forces"
	faction = "Union of Progressive People"
	total_positions = 1
	exp_type_department = EXP_TYPE_REQUISITIONS
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD


//UPP Leader
/datum/job/uppshipside/leader
	title = UPP_LEADER
	paygrade = "UPP4"
	comm_title = "ULCPL"
	selection_color = "#017a2c"
	supervisors = "High Command of UPP Forces"
	skills_type = /datum/skills/SL/upp
	access = ALL_UPP_ACCESS
	minimal_access = ALL_UPP_ACCESS
	display_order = JOB_DISPLAY_ORDER_UPP_LEADER
	outfit = /datum/outfit/job/uppshipside/leader
	exp_requirements = XP_REQ_EXPERIENCED
	exp_type = EXP_TYPE_REGULAR_ALL


/datum/job/uppshipside/leader/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"Kill innocent!"})


/datum/outfit/job/uppshipside/leader
	name = UPP_LEADER
	jobtype = /datum/job/uppshipside/leader

	id = /obj/item/card/id/silver
	belt = /obj/item/storage/belt/gun/korovin/standard
	w_uniform = /obj/item/clothing/under/marine/veteran/UPP
	shoes = /obj/item/clothing/shoes/marine


//UPP Heavy
/datum/job/uppshipside/heavy
	title = UPP_HEAVY
	paygrade = "UPP3"
	comm_title = "UCPL"
	total_positions = 4
	selection_color = "#00b841"
	access = HEAVY_UPP_ACCESS
	minimal_access = HEAVY_UPP_ACCESS
	skills_type = /datum/skills/specialist/upp
	display_order = JOB_DISPLAY_ORDER_UPP_HEAVY
	outfit = /datum/outfit/job/shipside/heavy
	exp_requirements = XP_REQ_INTERMEDIATE
	exp_type = EXP_TYPE_REGULAR_ALL


/datum/job/uppshipside/heavy/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"Shoot things."})


/datum/outfit/job/shipside/heavy
	name = UPP_HEAVY
	jobtype = /datum/job/uppshipeside/heavy

	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/distress/usl
	w_uniform = /obj/item/clothing/under/marine/veteran/UPP
	shoes = /obj/item/clothing/shoes/marine
	gloves = /obj/item/clothing/gloves/marine/veteran/PMC
	back = /obj/item/storage/backpack/lightpack


//UPP Medic
/datum/job/uppshipside/medic
	title = UPP_MEDIC
	paygrade = "UPP2"
	comm_title = "UPFC"
	total_positions = 16
	access = MEDIC_UPP_ACCESS
	minimal_access = MEDIC_UPP_ACCESS
	skills_type = /datum/skills/combat_medic/crafty
	display_order = JOB_DISPLAY_ORDER_UPP_MEDIC
	outfit = /datum/outfit/job/uppshipside/medic
	exp_requirements = XP_REQ_INTERMEDIATE
	exp_type = EXP_TYPE_REGULAR_ALL


/datum/job/uppshipeside/heavy/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"Heal comrades."})


/datum/outfit/job/uppshipside/medic
	name = UPP_MEDIC
	jobtype = /datum/job/uppshipside/medic

	id = /obj/item/card/id/silver
	w_uniform = /obj/item/clothing/under/marine/veteran/UPP/medic
	shoes = /obj/item/clothing/shoes/marine

//UPP Private
/datum/job/uppshipside/private
	total_positions = -1
	title = UPP_PRIVATE
	exp_type_department = EXP_TYPE_REQUISITIONS
	paygrade = "UPP1"
	comm_title = "UPVT"
	supervisors = "Platoon Leader of UPP Forces"
	display_order = JOB_DISPLAY_ORDER_UPP_PRIVATE
	access = PRIVATE_UPP_ACCESS
	minimal_access = PRIVATE_UPP_ACCESS
	skills_type = /datum/skills/crafty
	display_order = JOB_DISPLAY_ORDER_UPP_PRIVATE
	outfit = /datum/outfit/job/uppshipside/private


/datum/job/uppshipside/private/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {" Follow your leader to certain death."})


/datum/outfit/job/uppshipside/private
	name = UPP_PRIVATE
	jobtype = /datum/job/uppshipside/private

	id = /obj/item/card/id/silver
	w_uniform = /obj/item/clothing/under/marine/veteran/UPP
	shoes = /obj/item/clothing/shoes/marine