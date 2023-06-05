	db SWINUB ; 132
	db  50,  50,  40,  50,  30,  30
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 225 ; catch rate
	db 50 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/swinub/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, ROAR, HAIL, BLIZZARD, ICE_BEAM, ROCK_SMASH, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, TOXIC, THIEF, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK, ROLLOUT, POWER_GEM
	;end
	