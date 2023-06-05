	object_const_def
	const MOUETTE_NURSE
	const MOUETTE_CHANSEY

MouettePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MouetteNurseScript:
	jumpstd PokecenterNurseScript

MouetteChanseyCryScript:
	cry CHANSEY
	end

MouettePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MOUETTE, 3
	warp_event  4,  7, MOUETTE, 4
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MouetteNurseScript, -1
	object_event  4,  1, SPRITE_CHANSEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MouetteChanseyCryScript, -1