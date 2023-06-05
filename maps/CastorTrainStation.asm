	object_const_def
	const CASTORTRAINSTATION_OFFICER

CastorTrainStation_MapScripts:
	def_scene_scripts 

	def_callbacks

CastorTrainScript:
	opentext
	writetext CastorComingAboardText
.Start:
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ToGosha
	ifequal 2, .ToOmekata
	ifequal 3, .Lemonade
	closetext
	end


.ToGosha:
	writetext CastorGoshaConfirmText
	yesorno
	iffalse .DecidedNotToRide
	;checkitem PASS
	;iffalse .PassNotInBag
	writetext CastorRightThisWayText
	waitbutton
	closetext
	applymovement CASTORTRAINSTATION_OFFICER, OfficerApproachGoshaTrainDoorMovement
	applymovement PLAYER, PlayerApproachAndEnterGoshaTrainMovement
	setval FALSE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.ToOmekata:
	writetext CastorGoshaConfirmText
	yesorno
	iffalse .DecidedNotToRide
	;checkitem PASS
	;iffalse .PassNotInBag
	writetext CastorRightThisWayText
	waitbutton
	closetext
	applymovement CASTORTRAINSTATION_OFFICER, OfficerApproachGoshaTrainDoorMovement
	applymovement PLAYER, PlayerApproachAndEnterOmekataTrainMovement
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
	writetext CastorOfficerHopeToSeeYouAgainText
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
	db "Gosha@"
	db "Omekata@"
	db "NO@"
	db "CANCEL@"
	db "CANCEL@"


OfficerApproachGoshaTrainDoorMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

PlayerApproachAndEnterGoshaTrainMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

PlayerApproachAndEnterOmekataTrainMovement:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
	step_end

CastorComingAboardText:
text "We'll depart soon."
line "Are you coming"

para "aboard?"
done

CastorGoshaConfirmText:
text "Are you sure?"
done

CastorRightThisWayText:
text "Right this way"
line "please, miss."
done

CastorOfficerHopeToSeeYouAgainText:
	text "We hope to see you"
	line "again!"
	done

CastorTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, CASTOR, 6
	warp_event  9, 17, CASTOR, 7
	warp_event  6,  5, GOSHA, 4
	warp_event 11,  5, OMEKATA, 4


	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CastorTrainScript, -1