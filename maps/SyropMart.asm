	object_const_def
	const SYROPMART_CLERK

SyropMart_MapScripts:
	def_scene_scripts

	def_callbacks

SyropMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_SYROP
	closetext
	end

SyropMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SYROP, 5
	warp_event  3,  7, SYROP, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SyropMartClerkScript, -1
