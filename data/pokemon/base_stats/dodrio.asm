	db STARAPTOR ; 74

	db  60,  110,  70,  110,  60,  60
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/dodrio/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, AERIAL_ACE, HYPER_BEAM, PROTECT, EARTHQUAKE, RETURN, LOW_SWEEP, SWIFT, SLEEP_TALK, MIMIC, STEEL_WING, REST, THIEF, FLY, STRENGTH
	;end
	