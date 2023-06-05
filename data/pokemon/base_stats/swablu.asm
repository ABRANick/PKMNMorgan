	db SWABLU ; 171
	db  45,  40,  60,  50,  40,  75
    evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 150 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/swablu/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, HIDDEN_POWER, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, RAIN_DANCE, SOLARBEAM, BLIZZARD, ICE_BEAM, AERIAL_ACE, DRAGON_CLAW, DRAGON_PULSE, THIEF, STEEL_WING, DAZZLINGLEAM, PLAYROUGH, HEAT_WAVE, FLY, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK
	;end
	