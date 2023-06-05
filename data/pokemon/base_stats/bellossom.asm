	db BELLOSSOM ; 19

	db  75,  60,  65,  90,  100,  100
    evs  0,   0,   0,   0,   2,   1
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FIRE ; type
	db 45 ; catch rate
	db 221 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/bellossom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, FIRE_PUNCH, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, ENERGY_BALL, SOLARBEAM, DAZZLINGLEAM, HEAT_WAVE, CUT, FLASH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK, SEED_FLARE
	;end
	
	