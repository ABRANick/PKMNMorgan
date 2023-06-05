	db MAMOSWINE ; 134
	db  110,  130,  80,  80,  70,  60
    evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 239 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/mamoswine/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, ROAR, HAIL, BLIZZARD, ICE_BEAM, ROCK_SMASH, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, TOXIC, THIEF, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, ROLLOUT, POWER_GEM
	;end
	