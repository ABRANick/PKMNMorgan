	db FERALIGATR ; 111
	db  85,  105,  100,  78,  79,  83
    evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 142 ; base exp
	db BERRY, BERRY ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/feraligatr/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, ICE_PUNCH, POISON_TAIL, DIG, EARTHQUAKE, BULLDOZE, ROCK_SLIDE, STONE_EDGE, SHADOW_CLAW, TOXIC, DRAGON_CLAW, DRAGON_PULSE, DARK_PULSE, THIEF,CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK 
	;end
	