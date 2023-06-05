	db CAMERUPT ; 166
	db  70,  100,  70,  40,  105,  75
    evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GROUND ; type
	db 150 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/camerupt/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, HYPER_BEAM, PROTECT, RETURN, SUBSTITUTE, SWAGGER, ROAR, FLAMETHROWER, FIRE_BLAST, SUNNY_DAY, WILL_O_WISP, SOLARBEAM, ROCK_SMASH, DIG, EARTHQUAKE, EARTH_POWER, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, TOXIC, HEAT_WAVE, STRENGTH, FLASH, ATTRACT, BIDE, ENCORE, MIMIC, REST, SLEEP_TALK, POWER_GEM
	;end
	