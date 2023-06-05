	object_const_def
    const SAFARI_GYM_DARIA
    const SAFARI_GYM_PICNICKER

SafariGym_MapScripts:
	def_scene_scripts

	def_callbacks


SafariGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3,  7, SAFARI, 4
    warp_event 2,  7, SAFARI, 4

  

	def_coord_events

	def_bg_events
	

	def_object_events
	object_event 1,  1, SPRITE_PICKNICKER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, SafariFishingGuruScript, -1
