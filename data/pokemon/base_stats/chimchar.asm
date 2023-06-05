    db TORCHIC ; 248  

	db  44,  58,  44,  61,  58,  44
    evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/chimchar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, AERIAL_ACE, SEISMIC_TOSS, BODY_SLAM, SHADOW_CLAW, PROTECT, SOLARBEAM, EARTHQUAKE, RETURN, DIG, LOW_SWEEP, SWIFT, FLAMETHROWER, SLEEP_TALK, MIMIC, ROCK_SLIDE, REST, THUNDERPUNCH, FIRE_PUNCH, CUT, STRENGTH
	;end
	