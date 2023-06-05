	db TAILOW ; 159
	db  40,  55,  30,  85,  30,  30
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 200 ; catch rate
	db 70 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/taillow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, BUBBLEBEAM, HIDDEN_POWER, AERIAL_ACE, RAIN_DANCE, PROTECT, RETURN, LOW_SWEEP, SWIFT, SLEEP_TALK, MIMIC, STEEL_WING, REST, THIEF, FLY
	;end
	
	