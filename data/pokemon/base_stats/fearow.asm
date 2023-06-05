	db NOCTOWL ; 63

	db  70,  90,  70,  100,  71,  71
    evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 155 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/fearow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, AERIAL_ACE, HYPER_BEAM, PROTECT, RETURN, LOW_SWEEP, SWIFT, SLEEP_TALK, MIMIC, STEEL_WING, REST, THIEF, FLY
	;end
	