	db SHELLOS ; 220
	db  76,  48,  48,  34,  57,  62
    evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/shellos/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, SWIFT, BUBBLEBEAM, RAIN_DANCE, HAIL, BLIZZARD, ICE_BEAM, BULK_UP, ROCK_SMASH, SLUDGE_BOMB, EARTHQUAKE, EARTH_POWER, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, TOXIC, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SLEEP_TALK
	;end
	
	