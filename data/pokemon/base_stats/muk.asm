	db MUK ; 92

	db  105,  105,  75,  50,  65,  100
    evs  1,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 75 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/muk/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, THUNDER, THUNDERBOLT, THUNDERPUNCH, ICE_PUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, SLUDGE_BOMB, DIG, ROCK_SLIDE, STONE_EDGE, HEX, SHADOW_BALL, DARK_PULSE, THIEF, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK
	;end
	