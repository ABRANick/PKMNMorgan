    db AERODACTYL ; 224  

	db  80, 105,  65, 130,  60,  75
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, RAIN_DANCE, ROCK_SMASH, POISON_TAIL, EARTHQUAKE, BULLDOZE, AERIAL_ACE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, TOXIC, DRAGON_CLAW, DRAGON_PULSE, STEEL_WING, HEAT_WAVE, FLY, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end
	