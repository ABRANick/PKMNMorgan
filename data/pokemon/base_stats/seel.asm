	db SNORUNT ; 189

	db  65,  45,  55,  45,  70,  70
    evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/seel/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HAIL, BUBBLEBEAM, HIDDEN_POWER, ICE_BEAM, BODY_SLAM, RAIN_DANCE, PROTECT, RETURN, DIG, SWIFT, SLEEP_TALK, MIMIC, REST, THIEF, SURF, STRENGTH, WHIRLPOOL, WATERFALL 
	;end