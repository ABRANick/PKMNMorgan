	object_const_def
	const SAFARI_FISHING_GURU

SafariFishingGuruHouse_MapScripts:
	def_scene_scripts

	def_callbacks


SafariFishingGuruScript:
    checkevent EVENT_GOT_OLD_ROD
    iftrue .HaveFunFishing
	opentext
	verbosegiveitem OLD_ROD
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.HaveFunFishing
    opentext
    writetext SafariFishingGuruHavingFunFishingText
    yesorno
    iffalse .NotForEveryone
    writetext SafariFishingGuruHavingVisitMyBrosText
    waitbutton
    closetext
    end 

.NotForEveryone
    opentext
    writetext SafariFishingGuruNotForEveryoneText
    waitbutton
    closetext
    end

SafariFishingGuruHavingFunFishingText:
    text "Having fun fish-"
    line "ing?"
    done

SafariFishingGuruHavingVisitMyBrosText:
    text "Thats fantastic to"
    line "hear! If ever you"

    para "see my brothers"
    line "around Etalon let"

    para "them know! You"
    line "can't miss them,"

    para "they're dressed"
    line "just like me!"
    done

SafariFishingGuruNotForEveryoneText:
    text "I suppose it's not"
    line "for everyone."

    para "Do give it another"
    line "try sometime."
    done

SafariFishingGuruHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3,  7, SAFARI, 4
    warp_event 2,  7, SAFARI, 4
    warp_event 3,  0, SAFARI, 5
  

	def_coord_events

	def_bg_events
	

	def_object_events
	object_event 1,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, SafariFishingGuruScript, -1
