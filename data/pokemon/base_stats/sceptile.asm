    db SCEPTILE ; 155

	db  70,  85,  65,  120,  105,  85
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 239; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/sceptile/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, SWIFT, ROAR, SUNNY_DAY, ENERGY_BALL, SOLARBEAM, COUNTER, ROCK_SLIDE, SEISMIC_TOSS, POISON_TAIL, DIG, EARTHQUAKE, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, SHADOW_CLAW, TOXIC, DRAGON_CLAW, DRAGON_PULSE, DARK_PULSE, THIEF, CUT, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, SEED_FLARE
	;end
	