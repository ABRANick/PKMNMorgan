	db ARON ; 162
	db  50,  70,  100,  30,  40,  40
    evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 180 ; catch rate
	db 66 ; base exp
	db NO_ITEM, METAL_COAT ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/aron/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ;DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER, PROTECT, REFLECT, SUBSTITUTE, SWAGGER, ROAR, SUNNY_DAY, BUBBLEBEAM, RAIN_DANCE, SHOCK_WAVE, COUNTER, ROCK_SMASH, DIG, EARTHQUAKE, BULLDOZE, ROCK_SLIDE, SANDSTORM, STONE_EDGE, SHADOW_CLAW, TOXIC, CUT, STRENGTH, ATTRACT, BIDE, ENCORE, HEADBUTT, MIMIC, REST, SELFDESTRUCT, SLEEP_TALK, ROLLOUT
	;end
	