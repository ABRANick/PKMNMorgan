	db ZIGZAGOON ; 5

	db  38,  35,  41,  60,  30,  41
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 56 ; base exp
	db BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/zigzagoon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, SHOCK_WAVE, THUNDER, THUNDERBOLT, THUNDER_WAVE, ICE_BEAM, BLIZZARD, ROCK_SMASH, POISON_TAIL, DIG, SHADOW_BALL, TOXIC, THIEF, CUT, FLY, SURF, STRENGTH, ATTRACT, BIDE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, ROLLOUT
	;end
	