    db CELEBI ; 249

	db 100, 100, 100, 100, 100, 100
    evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, GRASS ; type
	db 45 ; catch rate
	db 240 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/celebi/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROAR, TOXIC, GIGA_DRAIN, HIDDEN_POWER, SUNNY_DAY, AERIAL_ACE, SEISMIC_TOSS, HYPER_BEAM, BODY_SLAM, LIGHT_SCREEN, SHADOW_CLAW, PROTECT, SOLARBEAM, HEX, RETURN, PSYCHIC_M, SHADOW_BALL, SWIFT, REFLECT, DAZZLINGLEAM, SLUDGE_BOMB, SLEEP_TALK, MIMIC, SIGNAL_BEAM, FLASH_CANNON, REST, THUNDER_WAVE, THIEF, CUT, STRENGTH
	;end
	