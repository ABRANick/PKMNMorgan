	db TORKOAL ; 181

	db  85,  60,  95,  80,  95,  130
    evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 90 ; catch rate
	db 188 ; base exp
	db CHARCOAL, CHARCOAL ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/torkoal/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, SWIFT, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, SOLARBEAM, ROCK_SMASH, SLUDGE_BOMB, EARTHQUAKE, EARTH_POWER, BULLDOZE, ROCK_SLIDE, STONE_EDGE, TOXIC, DARK_PULSE, HEAT_WAVE, STRENGTH, FLASH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT
	;end
	