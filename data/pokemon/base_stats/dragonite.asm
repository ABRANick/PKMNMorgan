    db DRAGONITE ; 231  

	db  91, 134,  95,  80, 100, 100
    evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING; type
	db 45 ; catch rate
	db 240 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, THUNDERPUNCH, BLIZZARD, ICE_BEAM, ICE_PUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, EARTHQUAKE, BULLDOZE, LIGHT_SCREEN, REFLECT, ROCK_SLIDE, STONE_EDGE, DRAGON_CLAW, DRAGON_PULSE, STEEL_WING, CUT, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ATTRACT, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;