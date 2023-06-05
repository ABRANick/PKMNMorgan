	object_const_def
	const SAFARIMART_CLERK

SafariMart_MapScripts:
	def_scene_scripts

	def_callbacks

SafariMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_SAFARI
	closetext
	end

SafariMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI, 3
	warp_event  3,  7, SAFARI, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariMartClerkScript, -1
