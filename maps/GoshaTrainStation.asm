	object_const_def
	const GOSHATRAINSTATION_OFFICER

GoshaTrainStation_MapScripts:
	def_scene_scripts 

	def_callbacks

GoshaTrainScript:
	opentext
	writetext GoshaComingAboardText
.Start:
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ToCastor
	ifequal 2, .ToOmekata
	ifequal 3, .Lemonade
	closetext
	end


.ToCastor:
	writetext GoshaOfficerConfirmText
	yesorno
	iffalse .DecidedNotToRide
	;checkitem PASS
	;iffalse .PassNotInBag
	writetext GoshaRightThisWayText
	waitbutton
	closetext
	applymovement CASTORTRAINSTATION_OFFICER, GoshaOfficerApproachTrainDoorMovement
	applymovement PLAYER, GoshaPlayerApproachAndEnterCastorTrainMovement
	setval FALSE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.ToOmekata:
	writetext GoshaOfficerConfirmText
	yesorno
	iffalse .DecidedNotToRide
	;checkitem PASS
	;iffalse .PassNotInBag
	writetext GoshaRightThisWayText
	waitbutton
	closetext
	applymovement GOSHATRAINSTATION_OFFICER, GoshaOfficerApproachTrainDoorMovement
	applymovement PLAYER, GoshaPlayerApproachAndEnterOmekataTrainMovement
	setval FALSE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.Lemonade:
	end

.MovementBoardTheTrain:
	turn_head DOWN
	step_end

.DecidedNotToRide:
	writetext GoshaOfficerHopeToSeeYouAgainText
	waitbutton
	closetext
	end

.MenuHeader:
	db $40 ; flags
	db 01, 00 ; start coords
	db 15, 19 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "Castor@"
	db "Omekata@"
	db "NO@"
	db "CANCEL@"
	db "CANCEL@"


GoshaOfficerApproachTrainDoorMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

GoshaPlayerApproachAndEnterCastorTrainMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

GoshaPlayerApproachAndEnterOmekataTrainMovement:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
    step_end

GoshaComingAboardText:
text "We'll depart soon."
line "Are you coming"

para "aboard?"
done

GoshaOfficerConfirmText:
text "Are you sure?"
done

GoshaRightThisWayText:
text "Right this way"
line "please, miss."
done

GoshaOfficerHopeToSeeYouAgainText:
	text "We hope to see you"
	line "again!"
	done

GoshaTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, GOSHA, 4
	warp_event  9, 17, GOSHA, 5
	warp_event  6,  5, CASTOR, 6
	warp_event 11,  5, OMEKATA, 4


	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoshaTrainScript, -1