	db MAWILE ; 55

	db  50,  105,  125,  55,  95,  50
    evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FAIRY ; type
	db 45 ; catch rate
	db 133 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/mawile/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, FIRE_PUNCH, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, SHOCK_WAVE, THUNDERPUNCH, BULK_UP, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, HEX, SHADOW_BALL, SHADOW_CLAW, TOXIC, DRAGON_CLAW, PLAYROUGH, CUT, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK
	;end
	