	object_const_def
	const CASTORBIKESHOP_CLERK
	const CASTORBIKESHOP_YOUNGSTER

CastorBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

.DummyScene: ; unreferenced
	end

CastorBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext CastorBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext CastorBikeShopClerkAgreedText
	promptbutton
	waitsfx
	giveitem BICYCLE
	writetext GotABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext CastorBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext CastorBikeShopClerkRefusedText
	waitbutton
	closetext
	end

CastorBikeShopClerkIntroText:
	text "…sigh… I moved"
	line "here, but I can't"

	para "sell my BICYCLES."
	done


CastorBikeShopClerkAgreedText:
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and I'll loan you"
	line "a BICYCLE."
	done

GotABicycleText:
	text "<PLAYER> got a"
	line "BICYCLE."
	done

CastorBikeShopClerkFirstRateBikesText:
	text "My BICYCLES are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done

CastorBikeShopClerkRefusedText:
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done

CastorBikeShopYoungsterMessageScript:
	faceplayer
	opentext
	writetext CastorBikeShopYoungsterMessageText
	waitbutton
	closetext
	end

CastorBikeShopYoungsterMessageText:
	text "1"
	done

CastorBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
    warp_event  2,  7, CASTOR, 3
    warp_event  3,  7, CASTOR, 3


	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CastorBikeShopClerkScript, -1
	object_event  2,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CastorBikeShopYoungsterMessageScript, -1