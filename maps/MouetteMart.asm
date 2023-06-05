	object_const_def
	const MOUETTEMART_CLERK

MouetteMart_MapScripts:
	def_scene_scripts

	def_callbacks

MouetteMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MOUETTE
	closetext
	end

MouetteMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MOUETTE, 8
	warp_event  3,  7, MOUETTE, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MouetteMartClerkScript, -1
