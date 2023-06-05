BLACK_MARKET_CHARMANDER_COINS EQU 500
BLACK_MARKET_TOTODILE_COINS EQU 500
BLACK_MARKET_TURTWIG_COINS EQU 500

	object_const_def
	const BLACKMARKET_CLERK
	const BLACKMARKET_ESPEON
	const BLACKMARKET_OFFICERF
	const BLACKMARKET_SCIENTIST
	const BLACKMARKET_BURGLAR
	const BLACKMARKET_CHARMANDER			
	const BLACKMARKET_TOTODILE	
	const BLACKMARKET_TURTWIG	

OmekataBlackMarket_MapScripts:
	def_scene_scripts

	def_callbacks

OmekataBlackMarketClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_BLACK, MART_OMKEKATA_BLACK
	closetext
	end

OmekataBlackMarketEspeonScript:
	cry ESPEON
	end 

OmekataBlackMarketCharmanderScript:
	cry CHARMANDER
	opentext
	writetext BlackMarketCharmanderPriceText
	waitbutton
	special DisplayCoinCaseBalance
	yesorno
	iffalse .CantPayCharmander
	checkcoins BLACK_MARKET_CHARMANDER_COINS
	ifequal HAVE_LESS, .CantPayCharmander
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	waitsfx
	playsound SFX_TRANSACTION
	takecoins BLACK_MARKET_CHARMANDER_COINS
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHARMANDER, 25
	special GiveCharmander
	setevent EVENT_BOUGHT_CHARMANDER
	waitbutton
	closetext
	disappear BLACKMARKET_CHARMANDER
	end

.CantPayCharmander
	writetext BlackMarketCharmanderPriceText
	waitbutton
	closetext
	end

.PartyFull
	writetext BlackMarketCharmanderPriceText
	waitbutton
	closetext
	end

OmekataBlackMarketTotodileScript:
	cry TOTODILE
	opentext
	writetext BlackMarketCharmanderPriceText
	waitbutton
	special DisplayCoinCaseBalance
	yesorno
	iffalse .CantPayTotodile
	checkcoins BLACK_MARKET_TOTODILE_COINS
	ifequal HAVE_LESS, .CantPayTotodile
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	waitsfx
	playsound SFX_TRANSACTION
	takecoins BLACK_MARKET_TOTODILE_COINS
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TOTODILE, 25
	special GiveTotodile
	setevent EVENT_BOUGHT_TOTODILE
	waitbutton
	closetext
	disappear BLACKMARKET_TOTODILE
	end

.CantPayTotodile
	writetext BlackMarketCharmanderPriceText
	waitbutton
	closetext
	end

.PartyFull
	writetext BlackMarketCharmanderPriceText
	waitbutton
	closetext
	end

OmekataBlackMarketTurtwigScript:
	cry TREECKO
	opentext
	writetext BlackMarketCharmanderPriceText
	waitbutton
	special DisplayCoinCaseBalance
	yesorno
	iffalse .CantPayTurtwig
	checkcoins BLACK_MARKET_TOTODILE_COINS
	ifequal HAVE_LESS, .CantPayTurtwig
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	waitsfx
	playsound SFX_TRANSACTION
	takecoins BLACK_MARKET_TOTODILE_COINS
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TREECKO, 25
	special GiveTurtwig
	setevent EVENT_BOUGHT_TURTWIG
	waitbutton
	closetext
	disappear BLACKMARKET_TURTWIG
	end

.CantPayTurtwig
	writetext BlackMarketCharmanderPriceText
	waitbutton
	closetext
	end

.PartyFull
	writetext BlackMarketCharmanderPriceText
	waitbutton
	closetext
	end

BlackMarketCharmanderPriceText:
	text "500"
	done


OmekataBlackMarket_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3,	9, OMEKATA_ALLEY, 1


	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketClerkScript, -1
	object_event 11,  2, SPRITE_ESPEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_ICON_PURPLE, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketEspeonScript, -1
	object_event  2,  7, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketClerkScript, -1
	object_event  8,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketClerkScript, -1
	object_event 12,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketClerkScript, -1
	object_event 14,  5, SPRITE_CHARMANDER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketCharmanderScript, EVENT_BOUGHT_CHARMANDER
	object_event 14,  6, SPRITE_TOTODILE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketTotodileScript, -EVENT_BOUGHT_TOTODILE
	object_event 14,  7, SPRITE_TURTWIG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, OmekataBlackMarketTurtwigScript, EVENT_BOUGHT_TURTWIG
