SAFARI_MOOMOOMILK_PRICE EQU 4000

	object_const_def
	const SAFARI_LAPRAS
	const SAFARI_TAUROS
	const SAFARI_MILTANK
	const SAFARI_STARMIE
	const SAFARI_STANTLER
	const SAFARI_URSARING
	const SAFARI_RHYHORN
	const SAFARI_BELLOSSOM
	const SAFARI_GASTRODON
	const SAFARI_POKEMANAIAC
	const SAFARI_CAMPER
	const SAFARI_PICNICKER
	const SAFARI_POKEFAN_F
	const SAFARI_POKEFAN_M
	const SAFARI_LASS


Safari_MapScripts:
	def_scene_scripts

	def_callbacks

SafariCamperScript:
	faceplayer
	opentext
	writetext SafariCamperText
	waitbutton
	closetext
	end

SafariCamperText:
	text "I want to visit"
	line "the mountain area"
	cont "in the Safari."

	para "But they won't let"
	line "me through unless"
	cont "I have 3 badges."

	para "How on earth am I"
	line "supposed to get"
	cont "3 badges?"

	para "I'm lucky I have"
	line "even one badge!"
	done


SafariPicnickerScript:
	faceplayer
	opentext
	writetext SafariPicnickerText
	closetext
	end

SafariPicnickerText:
	text "I'm a trainer at"
	line "Dairo Gym."

	para "Daria, our leader"
	line "is dealing with"
	
	para "something in the"
	line "plains area of the"
	cont "Safari."
	done

SafariPokeManaicScript:
	faceplayer
	opentext 
	writetext SafariPokeManaicText
	yesorno
	iffalse .NoIDidnt
	writetext SafariPokeManiacOhOkText
	waitbutton
	closetext
	end

.NoIDidnt
	writetext SafariPokeManaicCuboneText
	waitbutton
	playsound SFX_GLASS_TING_2
	showemote EMOTE_SHOCK, PLAYER, 30
	opentext
	writetext SafariPokeManiacHauntingStuffText
	waitbutton
	closetext
	end

SafariPokeManaicText:
	text "Hey! Did you know"
	line "mother-less baby"
	
	para "Kangaskhan are"
	line "called Cubone?"
	done

SafariPokeManiacOhOkText:
	text "Oh, okay."

	para "I wish I knew"
	line "everything too."
	done

SafariPokeManaicCuboneText:
	text "It's true! The"
	line "fate of that"
	
	para "Cubone depends on"
	line "whether it bonds"

	para "with a trainer or"
	line "finds its mother's"
	cont "remains first."
	done

SafariPokeManiacHauntingStuffText:
	text "Yeah I know,"	
	line "Haunting stuff..."
	cont "right?"
	done

SafariPokeFanMScript:
	faceplayer
	opentext
	writetext SafariPokeFanMText
	waitbutton
	closetext
	end

SafariPokeFanMText:
	text "The guy who takes"
	line "care of the water"
	
	para "#MON loves to"
	line "teach trainers how"
	cont "to fish."
	done

SafariPokeFanFScript:
	faceplayer
	opentext
	writetext PokeFanFText
	waitbutton
	closetext
	end 

PokeFanFText:
	text "bunjur"
	done

SafariLaprasSign:
	refreshscreen
	pokepic LAPRAS
	cry LAPRAS
	waitbutton
	closepokepic
	opentext
	writetext SafariLaprasSignText
	waitbutton
	closetext
	end

SafariTaurosSign:
	refreshscreen
	pokepic TAUROS
	cry TAUROS
	waitbutton
	closepokepic
	opentext
	writetext SafariTaurosSignText
	waitbutton
	closetext
	end


SafariMiltankSign:	
	refreshscreen
	pokepic MILTANK
	cry MILTANK
	waitbutton
	closepokepic
	opentext
	writetext SafariMiltankSignText
	waitbutton
	closetext
	end

SafariStarmieSign:
	refreshscreen
	pokepic STARMIE
	cry STARMIE
	waitbutton
	closepokepic
	opentext
	writetext SafariStarmieSignText
	waitbutton
	closetext
	end

SafariStantlerSign:
	refreshscreen
	pokepic STANTLER
	cry STANTLER
	waitbutton
	closepokepic
	opentext
	writetext SafariStantlerSignText
	waitbutton
	closetext
	end

SafariKangaskhanSign:
	refreshscreen
	pokepic KANGASKHAN
	cry KANGASKHAN
	waitbutton
	closepokepic
	opentext
	writetext SafariKangaskhanSignText
	waitbutton
	closetext
	end

SafariRhyhornSign:
	refreshscreen
	pokepic RHYHORN
	cry RHYHORN
	waitbutton
	closepokepic
	opentext
	writetext SafariRhyhornSignText
	waitbutton
	closetext
	end

SafariBellossomSign:
	refreshscreen
	pokepic BELLOSSOM
	cry BELLOSSOM
	waitbutton
	closepokepic
	opentext
	writetext SafariBellossomSignText
	waitbutton
	closetext
	end

SafariGastrodonSign:
	refreshscreen
	pokepic GASTRODON
	cry GASTRODON
	waitbutton
	closepokepic
	opentext
	writetext SafariGastrodonSignText
	waitbutton
	closetext
	end


SafariLaprasSignText:
	text "Lapras"

	para "A #MON that has"
	line "been overhunted"
	cont "almost to extin-"
	cont "tion."

	para "It loves to ferry"
	line "people across"
	cont "bodies of water."
	done

SafariTaurosSignText:
	text "Tauros"

	para "A rowdy #MON"
	line "with lots of"
	cont "stamina."

	para "CAUTION!!"

	para "Once running, it"
	line "won't stop until"
	cont "it hits something."
	done

SafariMiltankSignText:
	text "Miltank"

	para "Provides 20 litres"
	line "of milk on a daily"
	cont "basis!"

	para "It's sweet milk is"
	line "enjoyed by humans"
	cont "and #MON alike!"
	done

SafariStarmieSignText:
	text "Starmie"

	para "Commonly known as"
	line "The Gem of the Sea"

	para "with its core"
	line "glowing brightly"
	cont "in 7 colours."
	done

SafariStantlerSignText:
	text "Stantler"

	para "A #MON that was"
	line "hunted close to"
	cont "extinction."

	para "A reserve of"
	line "Stantler are kept"
	
	para "under the watchful"
	line "eye of Dairo's"
	cont "leader, Daria."
	done

SafariKangaskhanSignText:
	text "Kangaskhan"

	para "A #MON whos"
	line "maternal love is"
	cont "so deep it will"

	para "fight to the death"
	line "to protect its"
	cont "young."

	para "There are records"
	line "of a lost human"
	cont "child raised by"
	cont "a Kangaskhan."
	done

SafariRhyhornSignText:
	text "Rhyhorn"

	para "Incredibly strong"
	line "but not too bright"

	para "Rhyhorn on a run"
	line "often forget why"
	
	para "they started run-"
	line "ning in the first"
	cont "place. "
	done 

SafariBellossomSignText:
	text "Bellossom"

	para "The stinkier the"
	line "Gloom it has evol-"
	cont "ved from, the more"

	para "beautiful its"
	line "flowers bloom."

	para "When it dances its"
	line "petals rub in sync"
	
	para "making a pleasant"
	line "sound."
	done

SafariGastrodonSignText:
	text "Gastrodon"

	para "A relative of the"
	line "Shellder line."

	para "This ocean dweller"
	line "often comes onto"
	
	para "land to search for"
	line "food."
	done 

SafariSellMoomooMilk:
	opentext 
	writetext MooMooMilkSalesPitchText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, SAFARI_MOOMOOMILK_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem MOOMOO_MILK, 6
	iffalse .NoRoom
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, SAFARI_MOOMOOMILK_PRICE
	special PlaceMoneyTopRight
	writetext MoomooMilkSoldText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext MoomooMilkNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext MoomooMilkRefusedText
	waitbutton
	closetext
	end

.NoRoom:
	writetext MoomooMilkNoRoomText
	waitbutton
	closetext
	end

MooMooMilkSalesPitchText:
	text "Have I got a deal"
	line "for you!"

	para "A half-dozen bott-"
	line "les of delicious,"

	para "nutritious Moomoo"
	line "Milk, for ¥4000!"

	para "Should I go ahead"
	line "and bag that up"
	cont "for you?"
	done

MoomooMilkNotEnoughMoneyText:
	text "What do you take"
	line "for some kind of"
	cont "fool?"
	done

MoomooMilkRefusedText:
	text "I should charge"
	line "for having wasted"
	cont "my time!"
	done 

MoomooMilkNoRoomText:
	text "You don't have"
	line "room for them."
	done

MoomooMilkSoldText:
	text "Enjoy the fresh,"
	line "sweet taste!"
	done

Safari_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, SAFARI_POKECENTER_1F, 1
	warp_event  6,  7, SAFARI_POKECENTER_1F, 2
	warp_event 13,  7, SAFARI_MART, 1
	warp_event 37, 13, SAFARI_FISHING_GURU_HOUSE, 1
	warp_event 37,  9, SAFARI_FISHING_GURU_HOUSE, 3
	warp_event  6, 36, SAFARI_GATE, 1
	warp_event  6, 37, SAFARI_GATE, 2


	def_coord_events

	def_bg_events
	bg_event 19, 20, BGEVENT_READ, SafariLaprasSign
	bg_event 36, 32, BGEVENT_READ, SafariTaurosSign
	bg_event 37, 32, BGEVENT_READ, SafariMiltankSign
	bg_event  9,  8, BGEVENT_READ, SafariStarmieSign
	bg_event  7, 24, BGEVENT_READ, SafariStantlerSign
	bg_event 19, 32, BGEVENT_READ, SafariKangaskhanSign
	bg_event 39, 26, BGEVENT_READ, SafariRhyhornSign
	bg_event 29,  4, BGEVENT_READ, SafariBellossomSign
	bg_event 24, 13, BGEVENT_READ, SafariGastrodonSign
	bg_event 16,  7, BGEVENT_READ, SafariSellMoomooMilk
	bg_event 17,  7, BGEVENT_READ, SafariSellMoomooMilk

	def_object_events
	object_event 20, 18, SPRITE_LAPRAS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 33, 33, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 39, 33, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 10,  6, SPRITE_STARMIE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event  5, 21, SPRITE_STANTLER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 19, 29, SPRITE_KANGASKHAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 35, 25, SPRITE_RHYHORN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 31,  4, SPRITE_BELLOSSOM, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 23, 15, SPRITE_GASTRODON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 20, 32, SPRITE_POKEMANAIC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SafariPokeManaicScript, -1
	object_event 32, 28, SPRITE_CAMPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, SafariCamperScript, -1
	object_event 10, 24, SPRITE_PICKNICKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, SafariPicnickerScript, EVENT_ROUNDED_UP_STANTLER
	object_event 14, 13, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SafariPokeFanMScript, -1
	object_event 27,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, SafariPokeFanFScript, -1
