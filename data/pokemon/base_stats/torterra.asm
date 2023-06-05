    db SCEPTILE ; 250  

	db  95, 109, 105,  56,  75,  85
    evs  0,   2,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GROUND ; type
	db 45 ; catch rate
	db 236 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/torterra/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, GIGA_DRAIN, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, BODY_SLAM, PROTECT, SOLARBEAM, EARTHQUAKE, RETURN, DIG, SWIFT, REFLECT, SANDSTORM, SLEEP_TALK, MIMIC, ROCK_SLIDE, REST, THIEF, CUT, STRENGTH
	;end
	
	