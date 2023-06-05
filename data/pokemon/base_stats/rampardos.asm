    db MR_MIME ; 250  

	db  97, 165,  60,  58,  65,  50
    evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 45 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/rampardos/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, HIDDEN_POWER, SEISMIC_TOSS, HYPER_BEAM, BODY_SLAM, DRAGON_CLAW, SHADOW_CLAW, PROTECT, EARTHQUAKE, RETURN, DIG, LOW_SWEEP, SWIFT, SANDSTORM, SLEEP_TALK, MIMIC, ROCK_SLIDE, REST, THUNDERPUNCH, FIRE_PUNCH, CUT, STRENGTH
	;end
	