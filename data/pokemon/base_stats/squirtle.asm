	db SQUIRTLE ; 40

	db  44,  48,  65,  43,  50,  64
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 64 ; base exp
	db BERRY, BERRY ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/squirtle/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, ICE_PUNCH, COUNTER, ROCK_SMASH, SEISMIC_TOSS, DIG, EARTHQUAKE, BULLDOZE, ROCK_SLIDE, TOXIC, DRAGON_PULSE, DARK_PULSE, THIEF, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ATTRACT, BIDE, ENCORE, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT
	;end
	