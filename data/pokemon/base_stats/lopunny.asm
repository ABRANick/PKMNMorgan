	db LOPUNNY ; 102

	db  65,  100,  94,  105,  54,  96
    evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FIGHTING ; type
	db 60 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/lopunny/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, FIRE_PUNCH, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, THUNDER_WAVE, THUNDERPUNCH, ICE_PUNCH, BULK_UP, ROCK_SMASH, SEISMIC_TOSS, DIG, AERIAL_ACE, SHADOW_CLAW, TOXIC, THIEF, DAZZLINGLEAM, PLAYROUGH, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, BONEMERANG
	;end
	