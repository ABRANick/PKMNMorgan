    db GIBLE ; 238  

	db  58,  70,  45,  42,  40,  45
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GROUND ; type
	db 45 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/gible/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, COUNTER, ROCK_SMASH, SEISMIC_TOSS, POISON_TAIL, DIG, EARTHQUAKE, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, SHADOW_CLAW, TOXIC, DRAGON_CLAW, DRAGON_PULSE, THIEF, CUT, STRENGTH, AERIAL_ACE, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end
	
	