	object_const_def
	const CASTOR_YANMA
	const CASTOR_NIDOQUEEN
	const CASTOR_COOLTRAINERM
	const CASTOR_LASS_1
	const CASTOR_LASS_2
	const CASTOR_BUGCATCHER
	const CASTOR_YOUNGSTER
	const CASTOR_HIKER

Castor_MapScripts:
	def_scene_scripts 

	def_callbacks


CastorYanmaScript:
	cry YANMA
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	loadwildmon YANMA, 10
	startbattle
	reloadmapafterbattle
	disappear CASTOR_YANMA
	setevent EVENT_FOUGHT_YANMA
	end

CastorNidoqueenScript:
	cry NIDOQUEEN
	end 

CastorCoolTrainerMScript:
	end

Castor_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 29, CASTOR_POKECENTER_1F, 1
	warp_event  4, 29, CASTOR_POKECENTER_1F, 2
	warp_event 45, 17, CASTOR_BIKE_SHOP, 1
	warp_event 42,  9, CASTOR_GYM, 1
	warp_event 43,  9, CASTOR_GYM, 2
	warp_event 53, 29, CASTOR_TRAIN_STATION, 1
	warp_event 54, 29, CASTOR_TRAIN_STATION, 2
	warp_event  7, 17, CASTOR_GENERIC_HOUSE_ONE, 1
	warp_event 21, 17, CASTOR_GENERIC_HOUSE_TWO, 1
	warp_event  9,  7, CASTOR_MART, 1
	warp_event 10,  7, CASTOR_MART, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 55, 14, SPRITE_YANMA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CastorYanmaScript, EVENT_FOUGHT_YANMA
	object_event  9, 31, SPRITE_NIDOQUEEN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CastorNidoqueenScript, -1
	object_event 10, 31, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CastorCoolTrainerMScript, -1
	object_event 48, 30, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 16,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 57, 18, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 39, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, -1, -1
	object_event 31, 16, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, -1, -1

