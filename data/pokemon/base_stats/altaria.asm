	db ALTARIA ; 172

	db  75,  70,  90,  80,  70,  105
    evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FAIRY ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/altaria/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, RAIN_DANCE, SOLARBEAM, BLIZZARD, ICE_BEAM, EARTHQUAKE, EARTH_POWER, BULLDOZE, AERIAL_ACE, DRAGON_CLAW, DRAGON_PULSE, THIEF, STEEL_WING, DAZZLINGLEAM, PLAYROUGH, HEAT_WAVE, FLY, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK
	;end
	
	