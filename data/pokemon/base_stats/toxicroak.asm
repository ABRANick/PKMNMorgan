	db TOXICROAK ; 97
	db  83,  106,  65,  85,  86,  65
    evs  0,   2,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIGHTING ; type
	db 45 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/toxicroak/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, THUNDERPUNCH, ICE_PUNCH, BULK_UP, COUNTER, ROCK_SMASH, SEISMIC_TOSS, POISON_TAIL, SLUDGE_BOMB, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, STONE_EDGE, SHADOW_BALL, SHADOW_CLAW, TOXIC, DARK_PULSE, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end