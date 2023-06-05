	db CROAGUNK ; 96

	db  48,  61,  40,  50,  64,  40
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIGHTING ; type
	db 140 ; catch rate
	db 68 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25  ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/croagunk/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, THUNDERPUNCH, ICE_PUNCH, BULK_UP, COUNTER, ROCK_SMASH, SEISMIC_TOSS, POISON_TAIL, SLUDGE_BOMB, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, STONE_EDGE, SHADOW_BALL, SHADOW_CLAW, TOXIC, DARK_PULSE, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end

	