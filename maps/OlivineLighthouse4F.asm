	object_const_def
	const OLIVINELIGHTHOUSE4F_SAILOR

OlivineLighthouse4F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSailorKent:
	trainer SAILOR, KENT, EVENT_BEAT_SAILOR_KENT, SailorKentSeenText, SailorKentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorKentAfterBattleText
	waitbutton
	closetext
	end

SailorKentSeenText:
	text "JASMINE must be"
	line "worried sick about"
	cont "the #MON here."

	para "She won't even"
	line "smile these days."
	done

SailorKentBeatenText:
	text "I can't manage a"
	line "smile either…"
	done

SailorKentAfterBattleText:
	text "Speaking of sick,"
	line "I've heard there's"

	para "a good PHARMACY in"
	line "CIANWOOD."
	done

OlivineLighthouse4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, OLIVINE_LIGHTHOUSE_3F, 1
	warp_event  3,  5, OLIVINE_LIGHTHOUSE_5F, 2
	warp_event  9,  7, OLIVINE_LIGHTHOUSE_5F, 3
	warp_event  9,  5, OLIVINE_LIGHTHOUSE_3F, 3
	warp_event 16,  9, OLIVINE_LIGHTHOUSE_3F, 6
	warp_event 17,  9, OLIVINE_LIGHTHOUSE_3F, 7
	warp_event  8,  3, OLIVINE_LIGHTHOUSE_3F, 8
	warp_event  9,  3, OLIVINE_LIGHTHOUSE_3F, 9
	warp_event 16,  7, OLIVINE_LIGHTHOUSE_5F, 4
	warp_event 17,  7, OLIVINE_LIGHTHOUSE_5F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7, 14, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorKent, -1

