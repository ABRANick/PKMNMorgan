	db CHARMELEON ; 38

	db  58,  64,  58,  80,  80,  65
    evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/charmeleon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, EARTHQUAKE, BULLDOZE, ROCK_SLIDE, DRAGON_CLAW, DRAGON_PULSE, THIEF, CUT, STRENGTH, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end