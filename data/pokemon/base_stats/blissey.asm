	db BLISSEY ; 197
	db  255,  10,  10,  55,  75,  135
    evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db LUCKY_PUNCH, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/blissey/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DYNAMICPUNCH, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, FIRE_PUNCH, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, SOLARBEAM, SHOCK_WAVE, THUNDER, THUNDERBOLT, THUNDER_WAVE, THUNDERPUNCH, BLIZZARD, ICE_BEAM, ICE_PUNCH, COUNTER, SEISMIC_TOSS, PSYCHIC_M, SHADOW_BALL, DARK_PULSE, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT
	;end
