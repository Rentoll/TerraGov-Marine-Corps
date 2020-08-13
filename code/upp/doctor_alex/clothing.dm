/obj/item/clothing/suit/storage/marine/M40
	name = "M40 armor"
	desc = "A custom set of M40 armor designed for use by USCM stormtrooper. Contains thick kevlar shielding."
	icon_state = "st_armor"
	hard_armor = list("melee" = 50, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	soft_armor = list("melee" = 80, "bullet" = 60, "laser" = 40, "energy" = 40, "bomb" = 80, "bio" = 10, "rad" = 50, "fire" = 40, "acid" = 10)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|FEET|HANDS
	flags_cold_protection = CHEST|GROIN|ARMS|LEGS|FEET|HANDS
	flags_heat_protection = CHEST|GROIN|ARMS|LEGS|FEET|HANDS
	slowdown = SLOWDOWN_ARMOR_LIGHT

/obj/item/clothing/head/helmet/marine/M40
	name = "M40 helmet"
	icon_state = "st_helmet"
	desc = "A helmet designed for USCM storm trooper. Contains heavy insulation, covered in nomex weave."
	hard_armor = list("melee" = 20, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	soft_armor = list("melee" = 40, "bullet" = 30, "laser" = 20, "energy" = 20, "bomb" = 40, "bio" = 5, "rad" = 25, "fire" = 20, "acid" = 5)
	min_cold_protection_temperature = ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	anti_hug = 2