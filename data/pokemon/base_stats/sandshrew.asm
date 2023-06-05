	db SANDSHREW ; 32

	db  50,  75,  85,  40,  20,  30
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 255 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sandshrew/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, ICE_PUNCH, ROCK_SMASH, SEISMIC_TOSS, DIG, EARTHQUAKE, BULLDOZE, ROCK_SLIDE, STONE_EDGE, SHADOW_CLAW, PLAYROUGH, CUT, STRENGTH, ATTRACT, BIDE, EARTH_POWER, HEADBUTT, MIMIC, REST, SLEEP_TALK, ROLLOUT
	;end
	