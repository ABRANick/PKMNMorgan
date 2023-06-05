    db MARSHTOMP; 250  

	db  64,  66,  68,  50,  81,  76
    evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER; type
	db 45 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/prinplup/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, HAIL, BUBBLEBEAM, HIDDEN_POWER, AERIAL_ACE, ICE_BEAM, SEISMIC_TOSS, BODY_SLAM, RAIN_DANCE, PROTECT, EARTHQUAKE, RETURN, DIG, SWIFT, SANDSTORM, SLEEP_TALK, MIMIC, REST, SURF, STRENGTH, WHIRLPOOL, WATERFALL
	;end
	