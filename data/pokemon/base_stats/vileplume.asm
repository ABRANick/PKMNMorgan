	db VILEPLUME ; 18

	db  75,  80,  85,  50,  110,  90
    evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 221 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/vileplume/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups


	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, FALSE_SWIPE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, SUNNY_DAY, ENERGY_BALL, SOLARBEAM, SLUDGE_BOMB, HEX, TOXIC, DAZZLINGLEAM, CUT, FLASH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK, SEED_FLARE
	;end
	
	