	object_const_def
	const GOSHA_NURSE
	const GOSHA_CHANSEY

GoshaPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

GoshaNurseScript:
	jumpstd PokecenterNurseScript

GoshaChanseyCryScript:
	cry CHANSEY
	end

GoshaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, GOSHA, 1
	warp_event  4,  7, GOSHA, 2
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaNurseScript, -1
	object_event  4,  1, SPRITE_CHANSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaChanseyCryScript, -1