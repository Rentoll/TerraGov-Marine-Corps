//-------------------------------------STORMTROOPER------------------------------------------------------//

/obj/item/weapon/twohanded/hammer
	name = "N45 battle hammer"
	desc = "RIP AND TEAR."
	icon_state = "sledgehammer"
	item_state = "sledgehammer"
	force = 30
	flags_item = TWOHANDED
	force_wielded = 45
	w_class = 4
	sharp = IS_SHARP_ITEM_BIG
	flags_equip_slot = ITEM_SLOT_BACK

/obj/item/weapon/twohanded/hammer/attack(var/mob/living/M, mob/user)
    ..()
    if(flags_item & WIELDED && prob(40))
        M.Paralyze(6 SECONDS)

/obj/item/weapon/twohanded/hammer/true
	name = "N45 battle hammer"
	desc = "RIP AND TEAR."
	icon_state = "sledgehammer"
	item_state = "sledgehammer"
	force = 30
	flags_item = TWOHANDED
	force_wielded = 45
	w_class = 4
	sharp = IS_SHARP_ITEM_BIG
	flags_equip_slot = ITEM_SLOT_BACK

/obj/item/weapon/twohanded/hammer/true/attack(var/mob/living/M, mob/user)
    ..()
    if(flags_item & WIELDED && prob(40))
        M.Paralyze(6 SECONDS)

/obj/item/weapon/twohanded/hammer/true/afterattack(atom/A as mob|obj|turf|area, mob/user, proximity)
	if(get_dist(A,user) > 1)
		return

	var/atom/throw_target = get_edge_target_turf(A, get_dir(user, A))
	if(istype(A, /atom/movable))
		var/atom/movable/AM = A
		AM.throw_at(throw_target, 2, 1, user)

	for(var/atom/movable/M in range(A,1))
		if(M == user)
			continue

		if(M == A)
			continue

		if(!M.anchored)
			M.throw_at(throw_target, 1, 2, user)

//-------------------------------------GUNS------------------------------------------------------//

/obj/item/weapon/gun/shotgun/merc/spec
	name = "spec's super-shotgun"
	desc = "A cobbled-together pile of scrap and alien wood. Point end towards things you want to die. Has a burst fire feature, as if it needed it."
	icon_state = "super_shotgun"
	item_state = "super_shotgun"
	fire_sound = 'sound/weapons/guns/fire/shotgun_automatic.ogg'
	current_mag = /obj/item/ammo_magazine/internal/shotgun/spec
	attachable_allowed = list(
						/obj/item/attachable/bayonet,
						/obj/item/attachable/reddot)

	flags_gun_features = GUN_CAN_POINTBLANK|GUN_INTERNAL_MAG|GUN_TRIGGER_SAFETY

/obj/item/weapon/gun/shotgun/merc/New()
	..()
	attachable_offset = list("muzzle_x" = 31, "muzzle_y" = 19,"rail_x" = 10, "rail_y" = 20, "under_x" = 26, "under_y" = 14, "stock_x" = 17, "stock_y" = 14)
	if(current_mag && current_mag.current_rounds > 0) load_into_chamber()

	fire_delay = 6
	burst_amount = 2
	burst_delay = 0.5 SECONDS
	accuracy_mult = 0.8
	accuracy_mult_unwielded = 0.5
	scatter = 10
	scatter_unwielded = 20
	recoil = 1
	recoil_unwielded = 2

	//Vertical grip
	var/obj/item/attachable/verticalgrip/S = new(src)
	S.attach_icon = ""
	S.icon_state = ""
	S.flags_attach_features &= ~ATTACH_REMOVABLE
	S.Attach(src)
	update_attachable(S.slot)

/obj/item/weapon/gun/shotgun/merc/spec/examine(mob/user)
	..()
	if(in_chamber) to_chat(user, "It has a chambered round.")

/obj/item/weapon/gun/rifle/saiga
	name = "Saiga 22 shotgun"
	desc = "A custom made automatic shotgun,this shotgun can rival tactical shotgun and is only given to elite USCM units."
	icon_state = "saiga"
	item_state = "saiga"
	fire_sound = 'sound/weapons/guns/fire/shotgun.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/saiga
	type_of_casings = "shell"
	gun_skill_category = GUN_SKILL_SHOTGUNS
	attachable_allowed = list()
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_TRIGGER_SAFETY

	fire_delay = 1
	burst_amount = 0
	burst_delay = 1 SECONDS
	accuracy_mult = 1
	accuracy_mult_unwielded = 0.7
	scatter = -8
	scatter_unwielded = -4
	recoil = 3
	recoil_unwielded = 6

/obj/item/weapon/gun/rifle/saiga/New()
	..()
	attachable_offset = list("muzzle_x" = 30, "muzzle_y" = 21,"rail_x" = 15, "rail_y" = 23, "under_x" = 24, "under_y" = 13, "stock_x" = 24, "stock_y" = 13)
	//Vertical grip
	var/obj/item/attachable/verticalgrip/S = new(src)
	S.attach_icon = ""
	S.icon_state = ""
	S.flags_attach_features &= ~ATTACH_REMOVABLE
	S.Attach(src)
	update_attachable(S.slot)
	//scope
	var/obj/item/attachable/reddot/F = new(src)
	F.attach_icon = ""
	F.icon_state = ""
	F.flags_attach_features &= ~ATTACH_REMOVABLE
	F.Attach(src)
	update_attachable(F.slot)

/obj/item/weapon/gun/rifle/ak
	name = "AK-4047 heavy rifle"
	desc = "Compact UPP gun with extensive modification capabilities. Mainly used by heavy infantry."
	icon_state = "ak40"
	item_state = "ak40"
	fire_sound = 'sound/weapons/guns/fire/ak47.ogg'
	current_mag = /obj/item/ammo_magazine/rifle/ak
	attachable_allowed = list(
						/obj/item/attachable/extended_barrel,
						/obj/item/attachable/verticalgrip,
						/obj/item/attachable/angledgrip,
						/obj/item/attachable/bipod,
						/obj/item/attachable/stock/rifle/ak4047,
						/obj/item/attachable/flashlight/ak,
						/obj/item/attachable/heavy_barrel,
						/obj/item/attachable/compensator,
						/obj/item/attachable/lasersight,
						/obj/item/attachable/attached_gun/flamer,
						/obj/item/attachable/attached_gun/grenade,
						/obj/item/attachable/attached_gun/shotgun,
						)

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_WIELDED_FIRING_ONLY|GUN_TRIGGER_SAFETY
	gun_skill_category = GUN_SKILL_HEAVY_WEAPONS

/obj/item/weapon/gun/rifle/ak/New()
	..()
	attachable_offset = list("muzzle_x" = 32, "muzzle_y" = 14,"rail_x" = 17, "rail_y" = 19, "under_x" = 19, "under_y" = 12, "stock_x" = 24, "stock_y" = 13)
	//scope
	var/obj/item/attachable/scope/F = new(src)
	F.attach_icon = ""
	F.icon_state = ""
	F.flags_attach_features &= ~ATTACH_REMOVABLE
	F.Attach(src)
	update_attachable(F.slot)

	fire_delay = 3
	burst_amount = 6
	burst_delay = 1 SECONDS
	accuracy_mult = 1.1
	accuracy_mult_unwielded = 0.8
	scatter = -6
	scatter_unwielded = -2
	recoil = 2
	recoil_unwielded = 3
	wield_delay = 0.10 SECONDS
	aim_slowdown = 0.4
	damage_falloff_mult = 0.4

//-------------------------------------AMMO & MAGS------------------------------------------------------//

/obj/item/ammo_magazine/internal/shotgun/spec
	max_rounds = 4

/obj/item/ammo_magazine/rifle/saiga
	name = "Saiga 22 slug magazine"
	desc = "A slug magazine that fits in the Saiga 22 shotgun."
	caliber = "12g"
	icon_state = "saiga_slug"
	default_ammo = /datum/ammo/bullet/shotgun/slug
	max_rounds = 10
	gun_type = /obj/item/weapon/gun/rifle/saiga/

/obj/item/ammo_magazine/rifle/saiga/buckshot
	name = "Saiga 22 buckshot magazine"
	desc = "A buckshot magazine that fits in the Saiga 22 shotgun."
	caliber = "12g"
	icon_state = "saiga_buckshot"
	default_ammo = /datum/ammo/bullet/shotgun/buckshot
	max_rounds = 10
	bonus_overlay = "saiga_buckshot_over"
	gun_type = /obj/item/weapon/gun/rifle/saiga/

/obj/item/ammo_magazine/rifle/saiga/incendiary
	name = "Saiga 22 incendiary magazine"
	desc = "A incendiary magazine that fits in the Saiga 22 shotgun."
	caliber = "12g"
	icon_state = "saiga_incendiary"
	default_ammo = /datum/ammo/bullet/shotgun/incendiary
	max_rounds = 10
	bonus_overlay = "saiga_incendiary_over"
	gun_type = /obj/item/weapon/gun/rifle/saiga/

/obj/item/ammo_magazine/rifle/ak
	name = "AK-4047 magazine (10x24mm)"
	desc = "A 10mm assault rifle magazine."
	caliber = "10x24mm"
	icon_state = "akfuture"
	w_class = 3
	default_ammo = /datum/ammo/bullet/rifle/ak
	max_rounds = 30
	gun_type = /obj/item/weapon/gun/rifle/ak

/obj/item/ammo_magazine/rifle/ak/incendiary
	name = "AK-4047 incendiary magazine (10x24mm)"
	desc = "A 10mm assault rifle magazine."
	icon_state = "akfuture_incendiary"
	default_ammo = /datum/ammo/bullet/rifle/ak/incendiary

/obj/item/ammo_magazine/rifle/ak/ap
	name = "AK-4047 AP magazine (10x24mm)"
	desc = "A 10mm armor piercing magazine."
	icon_state = "akfuture_AP"
	default_ammo = /datum/ammo/bullet/rifle/ak/ap

/datum/ammo/bullet/rifle/ak
	name = "rifle bullet"
	hud_state = "rifle"
	hud_state_empty = "rifle_empty"
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_SUNDERING
	accurate_range = 16
	damage = 40
	penetration = 10
	sundering = 1

/datum/ammo/bullet/rifle/ak/ap
	name = "armor-piercing rifle bullet"
	damage = 35
	penetration = 55
	sundering = 5

/datum/ammo/bullet/rifle/ak/incendiary
	name = "incendiary rifle bullet"
	damage_type = BURN
	shrapnel_chance = 0
	flags_ammo_behavior = AMMO_BALLISTIC|AMMO_INCENDIARY
	accuracy = 3

//-------------------------------------------ATTACHES----------------------------------------------------//

/obj/item/attachable/flashlight/ak
	name = "AK flashlight"
	desc = "A simple flashlight used for mounting on a firearm. \nHas no drawbacks, but isn't particuraly useful outside of providing a light source."
	icon_state = "akflashlight"
	attach_icon = "akflashlight_a"
	pixel_shift_x = 24
	pixel_shift_y = 12
	light_mod = 7
	slot = "muzzle"
	materials = list(/datum/material/metal = 100, /datum/material/glass = 20)
	flags_attach_features = ATTACH_REMOVABLE|ATTACH_ACTIVATION
	attachment_action_type = /datum/action/item_action/toggle
	activation_sound = 'sound/items/flashlight.ogg'

/obj/item/attachable/flashlight/activate_attachment(mob/living/user, turn_off)
	if(turn_off && !(master_gun.flags_gun_features & GUN_FLASHLIGHT_ON))
		return

	if(ismob(master_gun.loc) && !user)
		user = master_gun.loc

	if(master_gun.flags_gun_features & GUN_FLASHLIGHT_ON)
		icon_state = "akflashlight"
		attach_icon = "akflashlight_a"
		master_gun.set_light(0)
	else
		icon_state = "akflashlight-on"
		attach_icon = "akflashlight_a-on"
		master_gun.set_light(light_mod)

	master_gun.flags_gun_features ^= GUN_FLASHLIGHT_ON

	master_gun.update_attachable(slot)

	for(var/X in master_gun.actions)
		var/datum/action/A = X
		A.update_button_icon()
	return TRUE

/obj/item/attachable/stock/rifle/ak4047
	name = "AK-4047 stock"
	desc = "A rare stock distributed in small numbers to UPP forces. Compatible with the AK-4047, this stock reduces recoil and improves accuracy, but at a reduction to handling and agility. Seemingly a bit more effective in a brawl"
	icon_state = "akstock"
	attach_icon = "akstock_a"
	pixel_shift_x = 45
	pixel_shift_y = 13