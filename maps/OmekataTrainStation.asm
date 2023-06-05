	object_const_def
	const OMEKATATRAINSTATION_OFFICER

OmekataTrainStation_MapScripts:
	def_scene_scripts 

	def_callbacks

OmekataTrainScript:
	opentext
	writetext OmekataComingAboardText
.Start:
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .ToCastor
	ifequal 2, .ToGosha
	ifequal 3, .Lemonade
	closetext
	end


.ToCastor:
	writetext OmekataOfficerConfirmText
	yesorno
	iffalse .DecidedNotToRide
	;checkitem PASS
	;iffalse .PassNotInBag
	writetext OmekataRightThisWayText
	waitbutton
	closetext
	applymovement CASTORTRAINSTATION_OFFICER, OmekataOfficerApproachTrainDoorMovement
	applymovement PLAYER, OmekataPlayerApproachAndEnterCastorTrainMovement
	setval FALSE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applymovement PLAYER, .MovementBoardTheTrain
	wait 20
	end

.ToGosha:
	writetext OmekataOfficerConfirmText
	yesorno
	iffalse .DecidedNotToRide
	;checkitem PASS
	;iffalse .PassNotInBag
	writetext OmekataRightThisWayText
	waitbutton
	closetext
	applymovement GOSHATRAINSTATION_OFFICER, OmekataOfficerApproachTrainDoorMovement
	applymovement PLAYER, OmekataPlayerApproachAndEnterGoshaTrainMovement
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
	writetext OmekataOfficerHopeToSeeYouAgainText
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
	db "Gosha@"
	db "NO@"
	db "CANCEL@"
	db "CANCEL@"


OmekataOfficerApproachTrainDoorMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

OmekataPlayerApproachAndEnterCastorTrainMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

OmekataPlayerApproachAndEnterGoshaTrainMovement:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
    step_end

OmekataComingAboardText:
text "We'll depart soon."
line "Are you coming"

para "aboard?"
done

OmekataOfficerConfirmText:
text "Are you sure?"
done

OmekataRightThisWayText:
text "Right this way"
line "please, miss."
done

OmekataOfficerHopeToSeeYouAgainText:
	text "We hope to see you"
	line "again!"
	done

OmekataTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, OMEKATA, 4
	warp_event  9, 17, OMEKATA, 5
	warp_event  6,  5, CASTOR, 6
	warp_event 11,  5, GOSHA, 4


	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OmekataTrainScript, -1