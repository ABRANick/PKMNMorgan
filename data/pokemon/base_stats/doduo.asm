	db ABSOL ; 73

	db  35,  85,  45,  75,  35,  35
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/doduo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, AERIAL_ACE, PROTECT, EARTHQUAKE, RETURN, LOW_SWEEP, SWIFT, SLEEP_TALK, MIMIC, STEEL_WING, REST, THIEF, FLY, STRENGTH
	;end
	