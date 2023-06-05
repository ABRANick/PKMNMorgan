	object_const_def
	const CASTORMART_CLERK

CastorMart_MapScripts:
	def_scene_scripts

	def_callbacks

CastorMartClerkScript:
	opentext
	pokemart MARTTYPE_BLACK, MART_OMKEKATA_BLACK
	closetext
	end

CastorMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CASTOR, 10
	warp_event  3,  7, CASTOR, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CastorMartClerkScript, -1