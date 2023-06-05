BRIDGESW_FRESH_WATER_PRICE EQU 200
BRIDGESW__SODA_POP_PRICE    EQU 300
BRIDGESW_LEMONADE_PRICE    EQU 350

	object_const_def
	const BRIDGESW_BIKER
	const BRIDGESW_SUPER_NERD1
	const BRIDGESW_SUPER_NERD2
	const BRIDGESW_POKE_BALL

BridgeSouthWest_MapScripts:
	def_scene_scripts

	def_callbacks

BridgeSWVendingMachine:
	opentext
	writetext BridgeSWVendingText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
	closetext
	end

.FreshWater:
	checkmoney YOUR_MONEY, BRIDGESW_FRESH_WATER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, BRIDGESW_FRESH_WATER_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, BRIDGESW__SODA_POP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, BRIDGESW__SODA_POP_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, BRIDGESW_LEMONADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, BRIDGESW_LEMONADE_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext BridgeSWClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext BridgeSWNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext BridgeSWNoSpaceText
	waitbutton
	sjump .Start

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER  ¥200@"
	db "SODA POP     ¥300@"
	db "LEMONADE     ¥350@"
	db "CANCEL@"


BridgeSWVendingText:
	text "Oh my Gosh! It's a"
	line "vending machine!"

	para "What's on the menu?"
	done

BridgeSWClangText:
	text "Clang! Yay!"
	line "@"
	text_ram wStringBuffer3
	text_start
	cont "popped out!"
	done

BridgeSWNoMoneyText:
	text "Oops, not enough"
	line "money."
	done

BridgeSWNoSpaceText:
	text "There's no more"
	line "room for stuff."
	done

BridgeSWBikerScript:
	trainer BIKER, ZEKE, EVENT_BEAT_BIKER_ZEKE, BridgeSWBikerSeenText, BridgeSWBikerBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeSWBikerAfterText
	waitbutton
	closetext
	end

BridgeSWBikerSeenText:
	text "HEY BITCH"
	done
	
BridgeSWBikerBeatenText:
	text "Maybe it's cause"
	done
	
BridgeSWBikerAfterText:
	text "To hell with them!"
	done

BridgeSWSuperNerd1Script:
	trainer SUPER_NERD, PAT, EVENT_BEAT_SUPER_NERD_PAT, BridgeSWSuperNerd1SeenText, BridgeSWSuperNerd1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgenSuperNerd1AfterText
	waitbutton
	closetext
	end

BridgeSWSuperNerd1SeenText:
	text "HEY BITCH"
	done
	
BridgeSWSuperNerd1BeatenText:
	text "Maybe it's cause"
	done
	
BridgeSWSuperNerd1AfterText:
	text "To hell with them!"
	done

BridgeSWSuperNerd2Script:
	trainer SUPER_NERD, ERIC, EVENT_BEAT_SUPER_NERD_ERIC, BridgeSWSuperNerd2SeenText, BridgeSWSuperNerd2BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeSWSuperNerd2AfterText
	waitbutton
	closetext
	end

BridgeSWSuperNerd2SeenText:
	text "HEY BITCH"
	done
	
BridgeSWSuperNerd2BeatenText:
	text "Maybe it's cause"
	done
	
BridgeSWSuperNerd2AfterText:
	text "To hell with them!"
	done

ItemballBridgeSWFullHealScript:
	itemball FULL_HEAL, 3

BridgeSouthWest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, MOUETTE, 1
	warp_event  2,  5, MOUETTE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  3, BGEVENT_UP, BridgeSWVendingMachine
	bg_event  7,  3, BGEVENT_UP, BridgeSWVendingMachine

	def_object_events
	object_event 22,  7, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, BridgeSWBikerScript, -1
	object_event  3, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, BridgeSWSuperNerd1Script, -1
	object_event 11, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, BridgeSWSuperNerd2Script, -1
	object_event  3, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_ITEMBALL, 0, ItemballBridgeSWFullHealScript, -1
	
