	db AGGRON ; 164
	db  70,  110,  180,  50,  60,  60
    evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 45 ; catch rate
	db 239 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/aggron/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, ROAR, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, SHOCK_WAVE, THUNDER, THUNDER_WAVE, THUNDERBOLT, THUNDERPUNCH, BLIZZARD, ICE_BEAM, ICE_PUNCH, COUNTER, ROCK_SMASH, DIG, EARTHQUAKE, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, SHADOW_CLAW, TOXIC, DRAGON_CLAW, DRAGON_PULSE, DARK_PULSE, CUT, SURF, STRENGTH, WHIRLPOOL, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT
	;end
	