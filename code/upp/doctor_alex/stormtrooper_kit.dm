/obj/item/storage/box/spec/st
	name = "Stormtrooper equipment crate"
	desc = "M40 helmet, M40 armor, Montage, 88 mod vp70 and ammo. "
	icon = 'icons/Marine/marine-weapons.dmi'
	icon_state = "st_case"
	spec_set = "stormtrooper"
	w_class = 5
	storage_slots = 14
	slowdown = 1
	can_hold = list() //Nada. Once you take the stuff out it doesn't fit back in.
	foldable = null

/obj/item/storage/box/spec/st/Initialize(mapload, ...)
	. = ..()
	new /obj/item/clothing/suit/storage/marine/M40(src)
	new /obj/item/clothing/head/helmet/marine/M40(src)
	new /obj/item/weapon/gun/pistol/standard_heavypistol(src)
	new /obj/item/weapon/gun/shotgun/combat/standardmarine(src)
	new /obj/item/ammo_magazine/pistol/standard_heavypistol(src)
	new /obj/item/ammo_magazine/pistol/standard_heavypistol(src)
	new /obj/item/ammo_magazine/pistol/standard_heavypistol(src)
	new /obj/item/ammo_magazine/pistol/standard_heavypistol(src)
	new /obj/item/ammo_magazine/pistol/standard_heavypistol(src)
	new /obj/item/storage/belt/gun/stand(src)
	new /obj/item/storage/pouch/explosive/detpack(src)
	new /obj/item/weapon/twohanded/hammer/true(src)