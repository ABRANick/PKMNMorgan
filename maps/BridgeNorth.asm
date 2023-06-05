BRIDGEN_FRESH_WATER_PRICE EQU 200
BRIDGEN__SODA_POP_PRICE    EQU 300
BRIDGEN_LEMONADE_PRICE    EQU 350

	object_const_def
	const BRIDGEN_BIKER1
	const BRIDGEN_BIKER2
	const BRIDGEN_BIKER3
	const BRIDGEN_BIKER4
	const BRIDGEN_CUEBALL1
	const BRIDGEN_CUEBALL2
	const BRIDGEN_CUEBALL3
	const BRIDGEN_SUPER_NERD1
	const BRIDGEN_LASS1
	const BRIDGEN_POKE_BALL
	const BRIDGEN_POKE_BALL2
	const BRIDGEN_FRUIT_TREE
	const BRIDGEN_FRUIT_TREE2


BridgeNorth_MapScripts:
	def_scene_scripts

	def_callbacks

BridgeNVendingMachine:
	opentext
	writetext BridgeNVendingText
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
	checkmoney YOUR_MONEY, BRIDGEN_FRESH_WATER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, BRIDGEN_FRESH_WATER_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, BRIDGEN__SODA_POP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, BRIDGEN__SODA_POP_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, BRIDGEN_LEMONADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, BRIDGEN_LEMONADE_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext BridgeNClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext BridgeNNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext BridgeNNoSpaceText
	waitbutton
	sjump .Start

.MenuHeader:
	db $40 ; flags
	db 01, 02 ; start coords
	db 15, 19 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "CASTOR"
	db "GOSHA"
	db "OMEKATA"
	db "CANCEL@"
	

BridgeNVendingText:
	text "Oh my Gosh! It's a"
	line "vending machine!"

	para "What's on the menu?"
	done

BridgeNClangText:
	text "Clang! Yay!"
	line "@"
	text_ram wStringBuffer3
	text_start
	cont "popped out!"
	done

BridgeNNoMoneyText:
	text "Oops, not enough"
	line "money."
	done

BridgeNNoSpaceText:
	text "There's no more"
	line "room for stuff."
	done

BridgeNBiker1Script:
	trainer BIKER, BUZZ, EVENT_BEAT_BIKER_BUZZ, BridgeNBiker1SeenText, BridgeNBiker1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNBiker1AfterText
	waitbutton
	closetext
	end

BridgeNBiker1SeenText:
	text "HEY BITCH"
	done
	
BridgeNBiker1BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNBiker1AfterText:
	text "To hell with them!"
	done

BridgeNBiker2Script:
	trainer BIKER, CROW, EVENT_BEAT_BIKER_CROW, BridgeNBiker2SeenText, BridgeNBiker2BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNBiker2AfterText
	waitbutton
	closetext
	end

BridgeNBiker2SeenText:
	text "HEY BITCH"
	done
	
BridgeNBiker2BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNBiker2AfterText:
	text "To hell with them!"
	done

BridgeNBiker3Script:
	trainer BIKER, BUTCH, EVENT_BEAT_BIKER_BUTCH, BridgeNBiker3SeenText, BridgeNBiker3BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNBiker3AfterText
	waitbutton
	closetext
	end

BridgeNBiker3SeenText:
	text "HEY BITCH"
	done
	
BridgeNBiker3BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNBiker3AfterText:
	text "To hell with them!"
	done


BridgeNBiker4Script:
	trainer BIKER, TINY, EVENT_BEAT_BIKER_TINY, BridgeNBiker4SeenText, BridgeNBiker4BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNBiker4AfterText
	waitbutton
	closetext
	end

BridgeNBiker4SeenText:
	text "HEY BITCH"
	done
	
BridgeNBiker4BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNBiker4AfterText:
	text "To hell with them!"
	done

BridgeNCueBall1Script:
	trainer CUE_BALL, BASS, EVENT_BEAT_CUEBALL_BASS, BridgeNCueBall1SeenText, BridgeNCueBall1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNCueBall1AfterText
	waitbutton
	closetext
	end

BridgeNCueBall1SeenText:
	text "HEY BITCH"
	done
	
BridgeNCueBall1BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNCueBall1AfterText:
	text "To hell with them!"
	done

BridgeNCueBall2Script:
	trainer CUE_BALL, RIFF, EVENT_BEAT_CUEBALL_RIFF, BridgeNCueBall2SeenText, BridgeNCueBall2BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNCueBall2AfterText
	waitbutton
	closetext
	end

BridgeNCueBall2SeenText:
	text "HEY BITCH"
	done
	
BridgeNCueBall2BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNCueBall2AfterText:
	text "To hell with them!"
	done

BridgeNCueBall3Script:
	trainer CUE_BALL, MAC, EVENT_BEAT_CUEBALL_MAC, BridgeNCueBall3SeenText, BridgeNCueBall3BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNCueBall3AfterText
	waitbutton
	closetext
	end

BridgeNCueBall3SeenText:
	text "HEY BITCH"
	done
	
BridgeNCueBall3BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNCueBall3AfterText:
	text "To hell with them!"
	done



BridgenSuperNerd1Script:
	trainer SUPER_NERD, WILLIAM1, EVENT_BEAT_SUPER_NERD_WILLIAM, BridgenSuperNerd1SeenText, BridgenSuperNerd1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgenSuperNerd1AfterText
	waitbutton
	closetext
	end

BridgenSuperNerd1SeenText:
	text "HEY BITCH"
	done
	
BridgenSuperNerd1BeatenText:
	text "Maybe it's cause"
	done
	
BridgenSuperNerd1AfterText:
	text "To hell with them!"
	done
	
	
BridgenLass1Script:
	trainer LASS, RIKKA, EVENT_BEAT_LASS_RIKKA, BridgeNLass1SeenText, BridgeNLass1BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BridgeNLass1AfterText
	waitbutton
	closetext
	end

BridgeNLass1SeenText:
	text "HEY BITCH"
	done
	
BridgeNLass1BeatenText:
	text "Maybe it's cause"
	done
	
BridgeNLass1AfterText:
	text "To hell with them!"
	done

ItemballBridgeNGreatBallScript:
	itemball GREAT_BALL, 20

ItemballBridgeNTMScript:
	itemball TM_ROLLOUT, 1

BridgeNFruitTreeScript:
	fruittree FRUITTREE_BRIDGEN

BridgeNFruitTreeScript2:
	fruittree FRUITTREE_BRIDGEN_2

BridgeNHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_BRIDGEN_HIDDEN_ULTRA_BALL

BridgeNHiddenProtein:
	hiddenitem PROTEIN, EVENT_BRIDGEN_HIDDEN_PROTEIN

BridgeNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, ROUTE_49, 3
	warp_event  4, 11, ROUTE_49, 4

	def_coord_events

	def_bg_events
	bg_event 12, 13, BGEVENT_UP, BridgeNVendingMachine
	bg_event 53, 13, BGEVENT_UP, BridgeNVendingMachine
	bg_event 13, 13, BGEVENT_UP, BridgeNVendingMachine
	bg_event 52, 13, BGEVENT_UP, BridgeNVendingMachine
	bg_event 22, 49, BGEVENT_ITEM, BridgeNHiddenUltraBall
	bg_event 42, 40, BGEVENT_ITEM, BridgeNHiddenProtein

	def_object_events
	object_event 22, 44, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, BridgeNBiker1Script, -1
	object_event 49, 10, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, BridgeNBiker2Script, -1
	object_event 41, 40, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, BridgeNBiker3Script, -1
	object_event 20,  6, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, BridgeNBiker4Script, -1
	object_event 42, 49, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, BridgeNCueBall1Script, -1
	object_event 30, 51, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, BridgeNCueBall2Script, -1
	object_event 31, 20, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, BridgeNCueBall3Script, -1
	object_event 10, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, BridgenSuperNerd1Script, -1
	object_event 16, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, BridgenLass1Script, -1
	object_event 12, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_ITEMBALL, 0, ItemballBridgeNGreatBallScript, -1
	object_event 21, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_ITEMBALL, 0, ItemballBridgeNTMScript, -1
	object_event 44, 17, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, BridgeNFruitTreeScript, -1
	object_event 43, 18, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, BridgeNFruitTreeScript2, -1

	
