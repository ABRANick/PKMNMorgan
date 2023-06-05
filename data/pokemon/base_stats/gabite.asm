    db GABITE ; 239  

	db  68,  90,  65,  82,  50,  55
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/gabite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, COUNTER, ROCK_SMASH, SEISMIC_TOSS, POISON_TAIL, DIG, EARTHQUAKE, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, SHADOW_CLAW, TOXIC, DRAGON_CLAW, DRAGON_PULSE, THIEF, CUT, STRENGTH, AERIAL_ACE, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end
	
	
	