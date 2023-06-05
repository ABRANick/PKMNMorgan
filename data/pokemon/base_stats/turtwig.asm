    db TREECKO ; 250  

	db  55,  68,  64,  31,  45,  55
    evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GROUND ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/turtwig/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, GIGA_DRAIN, HIDDEN_POWER, SUNNY_DAY, BODY_SLAM, PROTECT, SOLARBEAM, EARTHQUAKE, RETURN, DIG, SWIFT, REFLECT, SANDSTORM, SLEEP_TALK, MIMIC, ROCK_SLIDE, REST, THIEF, CUT, STRENGTH
	;end
	