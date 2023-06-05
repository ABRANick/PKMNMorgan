INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

RaltsEvosAttacks:
    db EVOLVE_LEVEL, 21, KIRLIA
    db 0 ; no more evolutions
    db 1, GROWL
    db 1, ECHOED_VOICE ; Disarm Voice New move to not lose to early Poisons
    db 6, CONFUSION 
    db 10, FAIRY_WIND ; Teleport Similar move to Disarm Voice Gave Teleport later
    db 14, MAGICAL_LEAF ; Comes early to help beat Trey
    db 17, CHARM, ; Lucky Chant Similar Move that it usually learns too late to be useful
    db 21, PSYBEAM ; Magical Leaf new move helps round out usefulness
    db 23, DRAININGKISS ; Heal Pulse Similar Move
    db 28, CALM_MIND
    db 32, HYPER_VOICE ; Psychic New move, given Psychic Later
    db 34, RECOVER ; Imprison, New move
    db 39, PSYCHIC_M ; Future Sight, Given later
    db 43, HAZE ; New move, Charm Given Earlier
    db 45, LOVELY_KISS ; Hypnosis, New move Upgrade
    db 50, DAZZLINGLEAM 
    db 54, MYSTICALFIRE ; Stored Power, New move
    db 60, HEAL_BELL ; New move
    db 63, FUTURE_SIGHT
    db 67, MOONBLAST ; new Move
    db 70, PERISH_SONG ; New Move
    db 0 ; no more level-up moves

KirliaEvosAttacks:
    db EVOLVE_HAPPINESS, TR_ANYTIME, GARDEVOIR
    db 0 ; no more evolutions
    db 1, GROWL
    db 1, ECHOED_VOICE ; Disarm Voice New move to not lose to early Poisons
    db 1, CONFUSION 
    db 1, FAIRY_WIND ; Teleport Similar move to Disarm Voice Gave Teleport later
    db 1, MAGICAL_LEAF ; Comes early to help beat Trey
    db 1, CHARM, ; Lucky Chant Similar Move that it usually learns too late to be useful
    db 1, PSYBEAM ; Magical Leaf new move helps round out usefulness
    db 25, DRAININGKISS ; Heal Pulse Similar Move
    db 31, CALM_MIND
    db 36, HYPER_VOICE ; Psychic New move, given Psychic Later
    db 39, RECOVER ; Imprison, New move
    db 45, PSYCHIC_M ; Future Sight, Given later
    db 50, HAZE ; New move, Charm Given Earlier
    db 53, LOVELY_KISS ; Hypnosis, New move Upgrade
    db 59, DREAM_EATER 
    db 64, MYSTICALFIRE ; Stored Power, New move
    db 70, HEAL_BELL ; New move
    db 73, FUTURE_SIGHT
    db 77, MOONBLAST ; new Move
    db 80, PERISH_SONG ; New Move
    db 0 ; no more level-up moves

GardevoirEvosAttacks:
    db EVOLVE_ITEM, MOON_STONE, GARDEVOIRM
    db 0 ; no more evolutions
    db 1, AURA_SPHERE ;Move Relearner
    db 1, GROWL
    db 1, ECHOED_VOICE ; Disarm Voice New move to not lose to early Poisons
    db 1, CONFUSION 
    db 1, FAIRY_WIND ; Teleport Similar move to Disarm Voice Gave Teleport later
    db 1, MAGICAL_LEAF ; Comes early to help beat Trey
    db 1, CHARM, ; Lucky Chant Similar Move that it usually learns too late to be useful
    db 1, PSYBEAM ; Magical Leaf new move helps round out usefulness
    db 25, DRAININGKISS ; Heal Pulse Similar Move
    db 31, CALM_MIND
    db 36, HYPER_VOICE ; Psychic New move, given Psychic Later
    db 39, RECOVER ; Imprison, New move
    db 45, PSYCHIC_M ; Future Sight, Given later
    db 50, HAZE ; New move, Charm Given Earlier
    db 53, LOVELY_KISS ; Hypnosis, New move Upgrade
    db 59, DREAM_EATER 
    db 64, MYSTICALFIRE ; Stored Power, New move
    db 70, HEAL_BELL ; New move
    db 73, FUTURE_SIGHT
    db 77, MOONBLAST ; new Move
    db 80, PERISH_SONG ; New Move
    db 0 ; no more level-up moves

GardevoirmEvosAttacks:
    db 0 ; no more evolutions
    db 1, AURA_SPHERE ; Move Relearner
    db 1, GROWL
    db 1, ECHOED_VOICE ; Disarm Voice New move to not lose to early Poisons
    db 1, CONFUSION 
    db 1, FAIRY_WIND ; Teleport Similar move to Disarm Voice Gave Teleport later
    db 1, MAGICAL_LEAF ; Comes early to help beat Trey
    db 1, CHARM, ; Lucky Chant Similar Move that it usually learns too late to be useful
    db 1, PSYBEAM ; Magical Leaf new move helps round out usefulness
    db 25, DRAININGKISS ; Heal Pulse Similar Move
    db 31, CALM_MIND
    db 36, HYPER_VOICE ; Psychic New move, given Psychic Later
    db 39, RECOVER ; Imprison, New move
    db 45, PSYCHIC_M ; Future Sight, Given later
    db 50, WILL_O_WISP ; New move, Charm Given Earlier
    db 53, LOVELY_KISS ; Hypnosis, New move Upgrade
    db 59, DREAM_EATER 
    db 64, MYSTICALFIRE ; Stored Power, New move
    db 70, HEAL_BELL ; New move
    db 73, FUTURE_SIGHT
    db 77, MOONBLAST ; new Move
    db 80, PERISH_SONG ; New Move
	;db 100, QUIVERDANCE ; new move, to push MG over the edge
    db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	db EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	db 1, GROWL
    db 1, TACKLE
    db 5, LEER ; Tail Whip, Similar move
    db 9, HEADBUTT
    db 13, MUD_SLAP ;Sand Attack, Similar move
    db 17, LOCK_ON ;Odor Sleuth, similar move
    db 20, QUICK_ATTACK ; MudSport New move
    db 25, PIN_MISSILE
    db 29, COVET
    db 33, TAKE_DOWN ;bestow New move
    db 37, REST ; Swapped around with flail for enemy trainer moveset
    db 41, FLAIL
    db 45, BELLY_DRUM
    db 49, ENDURE ; Fling, new move to pair with flail
    db 54, NIGHT_SLASH ; new move similar to fling
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
    db 1, TACKLE
    db 1, LEER ; Tail Whip, Similar move
    db 1, HEADBUTT
    db 1, MUD_SLAP ;Sand Attack, Similar move
    db 1, LOCK_ON ;Odor Sleuth, similar move
    db 1, QUICK_ATTACK ; MudSport New move
    db 29, PIN_MISSILE
    db 35, COVET
    db 41, TAKE_DOWN ;bestow New move
    db 47, REST ; Swapped around with flail for enemy trainer moveset
    db 53, FLAIL
    db 59, BELLY_DRUM
    db 65, ENDURE ; Fling, new move to pair with flail
    db 70, NIGHT_SLASH ; new move similar to fling
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 7, DEFENSE_CURL
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, DEFENSE_CURL
	db 12, FURY_CUTTER ; Fury Attack, New move Fury attack given later due to buff
	db 14, FOCUS_ENERGY
	db 16, SLUDGE ; Twinneedle, new move Twinneedle given later due to buff
	db 19, RAGE
	db 22, THIEF ; Pursuit, Similar move
	db 25, FURY_ATTACK ; Toxic Spikes
    db 28, PIN_MISSILE
    db 31, AGILITY
    db 34, NIGHT_SLASH ; Assurance Similar Move
	db 37, POISON_JAB
    db 40, SWORDS_DANCE ;Endeavor New move
	db 45, TWINEEDLE ;Fell Stinger, similar move 50bp x2 
	db 48, OUTRAGE ; new move
	db 0 ; no more level-up moves

StarlyEvosAttacks:
	db EVOLVE_LEVEL, 14, STARAVIA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, QUICK_ATTACK 
	db 9, PECK ;Wing Attack, Similar move 
	db 13, MUD_SLAP ; Double team, new move
	db 17, AERIAL_ACE ; Endeavor, replaced with aerial ace to be given inbetween when it usually learns wing attack and aerial ace
	db 21, WHIRLWIND
	db 25, COVET ; New move, Aerial Ace given earlier
	db 29, TAKE_DOWN
	db 33, AGILITY
	db 37, SLASH ; New move, Brave bird given later
	db 41, BRAVE_BIRD ; Final Gambit
	db 44, RECOVER ; new move similar to roost
	db 0 ; no more level-up moves

StaraviaEvosAttacks:
	db EVOLVE_LEVEL, 34, STARAPTOR
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, QUICK_ATTACK 
	db 1, PECK ;Wing Attack, Similar move 
	db 1, MUD_SLAP ; Double team, new move
	db 18, AERIAL_ACE ; Endeavor, replaced with aerial ace to be given inbetween when it usually learns wing attack and aerial ace
	db 23, WHIRLWIND
	db 28, COVET ; New move, Aerial Ace given earlier
	db 33, TAKE_DOWN
	db 38, AGILITY
	db 43, SLASH ; New move, Brave bird given later
	db 48, BRAVE_BIRD ; Final Gambit
	db 54, RECOVER ; new move similar to roost
	db 0 ; no more level-up moves

StaraptorEvosAttacks:
	db 0 ; no more evolutions
    db 1, NIGHT_SLASH ; Move Relearner
	db 1, GROWL
	db 1, TACKLE
	db 1, QUICK_ATTACK 
	db 1, PECK ;Wing Attack, Similar move 
	db 1, MUD_SLAP ; Double team, new move
	db 1, AERIAL_ACE ; Endeavor, replaced with aerial ace to be given inbetween when it usually learns wing attack and aerial ace
	db 1, WHIRLWIND
	db 1, COVET ; New move, Aerial Ace given earlier
	db 1, TAKE_DOWN
    db 34, CLOSECOMBAT
	db 41, AGILITY
	db 49, SLASH ; New move, Brave bird given later
	db 57, BRAVE_BIRD ; Final Gambit
	db 64, RECOVER ; new move similar to roost
	db 0 ; no more level-up moves

ShinxEvosAttacks:
	db EVOLVE_LEVEL, 15, LUXIO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 9, THUNDERSHOCK ; Charge, more useful early move
	db 13, BITE
	db 17, SPARK
	db 21, ROAR
	db 25, HOWL ; Swagger, New move
	db 29, BONE_CLUB ; thunderfang, new move
	db 33, CRUNCH 
	db 37, SCARY_FACE
	db 41, THUNDERBOLT ;Discharge, Similar move
	db 45, SWAGGER 
	db 48, WILD_CHARGE
    db 54, THUNDER_WAVE
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	db EVOLVE_LEVEL, 30, LUXRAY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, THUNDERSHOCK ; Charge, more useful early move
	db 1, BITE
	db 18, SPARK
	db 23, ROAR
	db 28, HOWL ; Swagger, New move
	db 33, BONE_CLUB ; thunderfang, new move
	db 38, CRUNCH 
	db 43, SCARY_FACE
	db 48, THUNDERBOLT ;Discharge, Similar move
	db 53, SWAGGER 
	db 56, WILD_CHARGE
    db 60, THUNDER_WAVE
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db 0 ; no more evolutions
    db 1, VOLT_TACKLE ; Move Relearner
	db 1, TACKLE
	db 1, LEER
	db 1, THUNDERSHOCK ; Charge, more useful early move
	db 1, BITE
	db 1, SPARK
	db 1, ROAR
	db 1, HOWL ; Swagger, New move
	db 35, BONE_CLUB ; thunderfang, new move
	db 42, CRUNCH 
	db 49, SCARY_FACE
	db 56, THUNDERBOLT ;Discharge, Similar move
	db 63, SWAGGER 
	db 68, WILD_CHARGE
    db 72, THUNDER_WAVE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, GROWTH ; sweet scent, new move
	db 9, ACID
	db 13, STUN_SPORE ;Poison powder
	db 15, MEGA_DRAIN
	db 19, SLEEP_POWDER
	db 23, SLUDGE ; Lucky chant, new move
	db 28, MORNING_SUN ; Moonlight, Similar Move
	db 31, GIGA_DRAIN
	db 35, TOXIC
	db 39, LEECH_SEED ; Natural Gift, New move
	db 43, MOONBLAST
    db 47, SUNNY_DAY ; Grassy Terrain Similar move
    db 51, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH ; sweet scent, new move
	db 1, ACID
	db 1, STUN_SPORE ;Poison powder
	db 1, MEGA_DRAIN
	db 1, SLEEP_POWDER
	db 24, SLUDGE ; Lucky chant, new move
	db 29, MORNING_SUN ; Moonlight, Similar Move
	db 34, GIGA_DRAIN
	db 39, TOXIC
	db 44, LEECH_SEED ; Natural Gift, New move
	db 49, MOONBLAST
    db 54, SUNNY_DAY ; Grassy Terrain Similar move
    db 59, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
    db 0 ; no more evolutions
	db 1, ABSORB
	db 1, GROWTH ; sweet scent, new move
	db 1, ACID
	db 1, STUN_SPORE ;Poison powder
	db 1, MEGA_DRAIN
	db 1, SLEEP_POWDER
	db 24, SLUDGE ; Lucky chant, new move
	db 29, MORNING_SUN ; Moonlight, Similar Move
	db 34, GIGA_DRAIN
	db 39, TOXIC
	db 44, LEECH_SEED ; Natural Gift, New move
	db 49, MOONBLAST
    db 54, SUNNY_DAY ; Grassy Terrain Similar move
    db 59, PETAL_DANCE
    db 64, SOLARBEAM
	db 0 ; no more level-up moves

BellossomEvosAttacks:
    db 0 ; no more evolutions
    db 1, FLAMETHROWER
    db 1, SOLARBEAM
    db 1, SUNNY_DAY
    db 1, MORNING_SUN
    db 24, MAGICAL_LEAF
    db 30, FLAME_WHEEL
    db 49, LEAF_BLADE
    db 64, SEED_FLARE
    db 70, FIRE_BLAST
	;db 77, QUIVERDANCE
    db 0 ; no more levelup moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, POUND
	db 5, WATER_GUN ; Bubble, Similar Move
	db 8, HYPNOSIS
	db 11, MUD_SLAP ; New move, Water Gun given Earlier
	db 15, BIDE ; Doubleslap, new move Fury attack given later due to buff
	db 18, BUBBLEBEAM ; Rain Dance, given later
	db 25, BODY_SLAM ; Bubblebeam given earlier
	db 28, MUD_SHOT
	db 31, BELLY_DRUM
    db 35, FURY_ATTACK 
	db 38, HYDRO_PUMP
    db 41, RAIN_DANCE
    db 45, EARTH_POWER ; Mud Bomb, similar move
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, POUND
	db 1, WATER_GUN ; Bubble, Similar Move
	db 1, HYPNOSIS
	db 1, MUD_SLAP ; New move, Water Gun given Earlier
	db 15, BIDE ; Doubleslap, new move Fury attack given later due to buff
	db 1, BUBBLEBEAM ; Rain Dance, given later
	db 27, BODY_SLAM ; Bubblebeam given earlier
	db 32, MUD_SHOT
	db 37, BELLY_DRUM
    db 43, FURY_ATTACK 
	db 48, HYDRO_PUMP
    db 53, RAIN_DANCE
    db 58, EARTH_POWER ; Mud Bomb, similar move
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
    db 0 ; no more evolutions
    db 1, BUBBLEBEAM
    db 1, FURY_ATTACK
    db 1, MACH_PUNCH
    db 1, HYPNOSIS
    db 32, FORCE_PALM
    db 43, LOCK_ON
    db 53, HYDRO_PUMP
    db 58, CROSS_CHOP
    db 0  ; no more level-up moves

PolitoedEvosAttacks:
    db 0 ; no more evolutions
    db 1, BUBBLEBEAM
    db 1, FURY_ATTACK
    db 1, PERISH_SONG
    db 1, HYPNOSIS
    db 32, SWAGGER
    db 43, HYPER_VOICE
    db 53, HYDRO_PUMP
    db 58, HEAL_BELL
    db 0  ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK 
	db 7, FOCUS_ENERGY
    db 9, POISON_STING
	db 13, DOUBLE_KICK
	db 19, HORN_ATTACK
	db 21, FURY_ATTACK
	db 25, POISON_TAIL ; Helping hand, egg move
	db 31, TOXIC ; Toxic Spikes, Similar Move
	db 33, SWAGGER ; Flatter Similar Move
	db 37, POISON_JAB
    db 43, DRILL_PECK ; Captivate, new move
    db 45, COUNTER ; Horn drill, egg move
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
    db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK 
	db 1, FOCUS_ENERGY
    db 1, POISON_STING
	db 1, DOUBLE_KICK
	db 20, HORN_ATTACK
	db 23, FURY_ATTACK
	db 28, POISON_TAIL ; Helping hand, egg move
	db 35, TOXIC ; Toxic Spikes, Similar Move
	db 38, SWAGGER ; Flatter Similar Move
	db 43, POISON_JAB
    db 50, DRILL_PECK ; Captivate, new move
    db 58, COUNTER ; Horn drill, egg move
	db 0 ; no more level-up moves

NidokingEvosAttacks:
    db 0 ; no more evolutions
    db 1, DOUBLE_KICK
    db 1, FOCUS_ENERGY
    db 1, MEGAHORN
    db 1, PECK
    db 1, POISON_STING
    db 23, THRASH
    db 35, POISON_TAIL
    db 43, POISON_JAB
    db 58, EARTHQUAKE
    db 70, MEGAHORN
    db 0 ; no more level up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE ; scratch, similar move
	db 7, LEER
    db 9, STOMP ; Double kick, better move given later
	db 13, POISON_STING 
	db 17, LOW_SWEEP ; fury swipes, new move
	db 21, BITE
	db 25, SLUDGE ; Helping Hand, new move
	db 31, GLARE ; Toxic Spikes, New move
	db 33, SWAGGER ; Flatter, similar move
	db 37, CRUNCH 
    db 43, SUPER_FANG ; Capitivate new move
    db 45, SLUDGE_BOMB ; Poison Fang, similar move
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE ; scratch, similar move
	db 1, LEER
    db 1, STOMP ; Double kick, better move given later
	db 1, POISON_STING 
	db 20, LOW_SWEEP ; fury swipes, new move
	db 23, BITE
	db 28, SLUDGE ; Helping Hand, new move
	db 35, GLARE ; Toxic Spikes, New move
	db 38, SWAGGER ; Flatter, similar move
	db 43, CRUNCH 
    db 50, SUPER_FANG ; Capitivate new move
    db 58, SLUDGE_BOMB ; Poison Fang, similar move
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
    db 0 ; no more evolutions
    db 1, LOW_SWEEP
    db 1, POISON_STING
    db 1, LEER
    db 1, STOMP
    db 1, CLOSECOMBAT
    db 23, BODY_SLAM
    db 35, SLUDGE
    db 43, SLUDGE_BOMB
    db 58, EARTHQUAKE
    db 70, CLOSECOMBAT
    db 0 ; no more level up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, LEER ; Tail Whip, Similar move
	db 6, GROWL
	db 9, THUNDER_WAVE ; play nice, charm as similar move given in place of thunder wave
	db 13, QUICK_ATTACK
	db 17, CHARM 
	db 23, DRAININGKISS ;Double team New move
	db 26, SHOCK_WAVE ; Spark, Similar Move
	db 29, REVERSAL ; nuzzle, egg move
	db 34, EXTREMESPEED ; Discharge new move
	db 37, TAKE_DOWN ; Slame Similar Move
	db 42, THUNDERBOLT 
	db 45, AGILITY
    db 50, NASTY_PLOT ;Wild charge new move
    db 53, LIGHT_SCREEN
    db 58, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
    db 0 ;no more evolutions
    db 1, QUICK_ATTACK
    db 1, LEER
    db 1, THUNDER_WAVE
    db 1, PSYCHIC_M
    db 1, SING
    db 25, THUNDERBOLT 
    db 36, MIRROR_COAT
    db 47, NASTY_PLOT
    db 58, TELEPORT
    db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POUND ; scratch similar move
    db 3, MUD_SLAP ; Sandattack, Similar move
	db 7, POISON_STING
	db 9, RAPID_SPIN
	db 13, FURY_CUTTER
	db 17, MAGNITUDE
	db 20, ROLLOUT
	db 23, FURY_ATTACK ; Sand Tomb, similar move
	db 26, SLASH 
	db 30, DIG
	db 34, CRUSH_CLAW ; gyro ball, egg move
	db 38, SWORDS_DANCE
	db 42, SANDSTORM
    db 46, EARTHQUAKE
    db 53, IRON_HEAD ; new move
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POUND ; scratch similar move
    db 1, MUD_SLAP ; Sandattack, Similar move
	db 1, POISON_STING
	db 1, RAPID_SPIN
	db 1, FURY_CUTTER
	db 1, MAGNITUDE
	db 1, ROLLOUT
	db 24, FURY_ATTACK ; Sand Tomb, similar move
	db 28, SLASH 
	db 33, DIG
	db 38, CRUSH_CLAW ; gyro ball, egg move
	db 43, SWORDS_DANCE
	db 48, SANDSTORM
    db 53, EARTHQUAKE
    db 58, IRON_HEAD ; new move
	db 0 ; no more level-up moves

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, SLEEP_POWDER
    db 15, STOMP ; Take down, similar move
	db 19, RAZOR_LEAF
	db 21, FALSE_SWIPE ; Sweet Scent, similar move
	db 25, GROWTH
	db 27, BODY_SLAM ; Double Edge, Similar move
	db 31, AMNESIA ; Worry seed, egg move
	db 33, MORNING_SUN ; Synthesis, similar move
    db 37, SEED_BOMB
    db 44, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
    db 1, STOMP ; Take down, similar move
	db 20, RAZOR_LEAF
	db 23, FALSE_SWIPE ; Sweet Scent, similar move
	db 28, GROWTH
	db 31, BODY_SLAM ; Double Edge, Similar move
	db 36, AMNESIA ; Worry seed, egg move
	db 39, MORNING_SUN ; Synthesis, similar move
    db 44, SEED_BOMB
    db 49, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
    db 1, CURSE ; move relearner
    db 1, LEAF_BLADE ; move relearner
    db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
    db 1, STOMP ; Take down, similar move
	db 1, RAZOR_LEAF
	db 1, FALSE_SWIPE ; Sweet Scent, similar move
	db 1, GROWTH
	db 1, BODY_SLAM ; Double Edge, Similar move
    db 32, PETAL_DANCE
	db 39, AMNESIA ; Worry seed, egg move
	db 45, MORNING_SUN ; Synthesis, similar move
    db 50, SEED_BOMB
    db 53, SOLARBEAM
    db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, POUND ; Scratch Similar Move
	db 1, GROWL
	db 7, EMBER
	db 10, METAL_CLAW ; Smokescreen, egg move
	db 16, DRAGONBREATH ; dragon rage, similar move
	db 19, SCARY_FACE
	db 25, FLAME_WHEEL ; Fire Fang, Similar move
	db 28, SLASH
	db 34, FLAMETHROWER
    db 37, FIRE_SPIN
	db 43, FIRE_BLAST
    db 46, MORNING_SUN ; Inferno, new move
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, POUND ; Scratch Similar Move
	db 1, GROWL
	db 1, EMBER
	db 1, METAL_CLAW ; Smokescreen, egg move
	db 17, DRAGONBREATH ; dragon rage, similar move
	db 21, SCARY_FACE
	db 28, FLAME_WHEEL ; Fire Fang, Similar move
	db 32, SLASH
	db 39, FLAMETHROWER
    db 43, FIRE_SPIN
	db 50, FIRE_BLAST
    db 54, MORNING_SUN ; Inferno, new move
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
    db 1, BELLY_DRUM ; Move Relarner
    db 1, AIR_SLASH ; Move relearner
    db 1, DRAGON_CLAW ; move relearner
	db 1, POUND ; Scratch Similar Move
	db 1, GROWL
	db 1, EMBER
	db 1, METAL_CLAW ; Smokescreen, egg move
	db 1, DRAGONBREATH ; dragon rage, similar move
	db 1, SCARY_FACE
	db 1, FLAME_WHEEL ; Fire Fang, Similar move
	db 1, SLASH
    db 36, AERIAL_ACE ; Wing Attack, Similar move
	db 41, FLAMETHROWER
    db 47, FIRE_SPIN
	db 56, FIRE_BLAST
    db 62, MORNING_SUN ; Inferno, new move similar to roost
    db 71, HEAT_WAVE
    db 77, FLARE_BLITZ
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ; tail whip, similar move
	db 7, WATER_GUN
    db 10, DEFENSE_CURL ; withdraw similar move
	db 13, METAL_CLAW ; Bubble New move
    db 16, BITE
	db 19, RAPID_SPIN
	db 22, PROTECT
    db 25, BUBBLEBEAM ; waterpulse Similar move
	db 28, ROLLOUT ; aqua tail, new move
	db 31, MIRROR_SHOT ; skull bash, new move
	db 34, BARRIER ; Iron Defense, similar move
	db 37, RAIN_DANCE
    db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER ; tail whip, similar move
	db 1, WATER_GUN
    db 1, DEFENSE_CURL ; withdraw similar move
	db 1, METAL_CLAW ; Bubble New move
    db 17, BITE
	db 20, RAPID_SPIN
	db 24, PROTECT
    db 28, BUBBLEBEAM ; waterpulse Similar move
	db 32, ROLLOUT ; aqua tail, new move
	db 36, MIRROR_SHOT ; skull bash, new move
	db 40, BARRIER ; Iron Defense, similar move
	db 44, RAIN_DANCE
    db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
    db 1, METEOR_MASH ; Move Relarner
    db 1, MIRROR_COAT ; move relarner
	db 1, TACKLE
	db 1, LEER ; tail whip, similar move
	db 1, WATER_GUN
    db 1, DEFENSE_CURL ; withdraw similar move
	db 1, METAL_CLAW ; Bubble New move
    db 1, BITE
	db 1, RAPID_SPIN
	db 1, PROTECT
    db 1, BUBBLEBEAM ; waterpulse Similar move
	db 1, ROLLOUT ; aqua tail, new move
	db 1, MIRROR_SHOT ; skull bash, new move
    db 39, CRUNCH ; new move
	db 46, BARRIER ; Iron Defense, similar move
	db 53, RAIN_DANCE
    db 60, HYDRO_PUMP
    db 65, FLASH_CANNON
    db 71, AURA_SPHERE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, CONFUSE_RAY ; Super Sonic, similar move
	db 12, BITE
	db 15, AERIAL_ACE ; wing attack, similar move
	db 19, MEAN_LOOK
	db 23, MEGA_DRAIN ; swift, new move
	db 26, SLUDGE ; Poison fang, similar  move
	db 30, AIR_CUTTER 
	db 34, HAZE
	db 37, LEECH_LIFE
    db 41, AIR_SLASH
    db 45, SLUDGE_BOMB ; Venoshock, similar move
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, CONFUSE_RAY ; Super Sonic, similar move
	db 1, BITE
	db 1, AERIAL_ACE ; wing attack, similar move
	db 1, MEAN_LOOK
	db 24, MEGA_DRAIN ; swift, new move
	db 27, SLUDGE ; Poison fang, similar  move
	db 32, AIR_CUTTER 
	db 35, HAZE
	db 40, LEECH_LIFE
    db 43, AIR_SLASH
    db 48, SLUDGE_BOMB ; Venoshock, similar move
	db 0 ; no more level-up moves


CrobatEvosAttacks:
	db 0 ; no more evolutions
    db 1, BRAVE_BIRD ; Move Relearner
    db 1, NASTY_PLOT ; Move Relearner
    db 1, WHIRLWIND ; Move Relearner
	db 1, ABSORB
	db 1, CONFUSE_RAY ; Super Sonic, similar move
	db 1, BITE
	db 1, AERIAL_ACE ; wing attack, similar move
	db 1, MEAN_LOOK
	db 24, MEGA_DRAIN ; swift, new move
	db 27, SLUDGE ; Poison fang, similar  move
	db 32, AIR_CUTTER 
	db 35, HAZE
	db 40, LEECH_LIFE
    db 43, AIR_SLASH
    db 48, SLUDGE_BOMB ; Venoshock, similar move
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, SMOG
	db 7, MUD_SLAP ; Smokescreen, similar move
	db 12, FAINT_ATTACK ; assurance, similar move
	db 15, RAPID_SPIN ; clear smog, new move
	db 18, SLUDGE
	db 23, SELFDESTRUCT
	db 26, HAZE
	db 29, CURSE ; Gyroball Egg move
	db 34, SLUDGE_BOMB
	db 37, ENCORE ;explosion, new move explosion put in place of memento
	db 40, DESTINY_BOND
	db 42, EXPLOSION
    db 45, GUNK_SHOT ; Belch, similar move
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
    db 1, SPIKES ; move relearner
    db 1, PAIN_SPLIT ; move relearner
	db 1, TACKLE
	db 1, SMOG
	db 1, MUD_SLAP ; Smokescreen, similar move
	db 1, FAINT_ATTACK ; assurance, similar move
	db 1, RAPID_SPIN ; clear smog, new move
	db 1, SLUDGE
	db 1, SELFDESTRUCT
	db 1, HAZE
	db 1, CURSE ; Gyroball Egg move
	db 1, SLUDGE_BOMB
	db 40, ENCORE ;explosion, new move explosion put in place of memento
	db 46, DESTINY_BOND
	db 50, EXPLOSION
    db 54, GUNK_SHOT ; Belch, similar move
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, POISON_STING
	db 9, BITE
	db 13, GLARE
	db 18, SCREECH
	db 20, POISON_TAIL ;acid similar move
	db 25, DIG ; swallow, stockpile,etc new move
	db 28, SCARY_FACE ; Acid spray, egg move
	db 33, CRUNCH ; mudbomb, new move
    db 38, POISON_JAB ; belch, similar move
	db 41, HAZE
	db 44, SWORDS_DANCE ;Coil, similar move
    db 49, GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
    db 1, WILD_CHARGE ; move Relarner
    db 1, ICICLECRASH ; move relearner
	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 1, GLARE
	db 1, SCREECH
	db 20, POISON_TAIL ;acid similar move
	db 27, DIG ; swallow, stockpile,etc new move
	db 32, SCARY_FACE ; Acid spray, egg move
	db 39, CRUNCH ; mudbomb, new move
    db 44, POISON_JAB ; belch, similar move
	db 48, HAZE
	db 51, SWORDS_DANCE ;Coil, similar move
    db 56, GUNK_SHOT
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, POUND ; scratch, similar move
	db 1, GROWL
	db 6, SCREECH ; Bite, given later 
	db 9, COVET ; Fakeout, new move
	db 14, BITE
	db 17, FURY_CUTTER ; screech given earier, new move
	db 22, METAL_CLAW ; Feint Attack, new move
	db 25, ENCORE ; Taunt, similar move
	db 29, SLASH ; pay day, given later
	db 33, SWAGGER ; slash, given prior
	db 38, NASTY_PLOT
    db 41, PAY_DAY
    db 46, DAZZLINGLEAM ; capitvate, new move
	db 49, NIGHT_SLASH
	db 54, PLAYROUGH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
    db 1, HYPNOSIS ; move relearner
	db 1, POUND ; scratch, similar move
	db 1, GROWL
	db 1, SCREECH ; Bite, given later 
	db 1, COVET ; Fakeout, new move
	db 1, BITE
	db 1, FURY_CUTTER ; screech given earier, new move
	db 1, METAL_CLAW ; Feint Attack, new move
	db 1, ENCORE ; Taunt, similar move
    db 28, SWIFT
    db 32, POWER_GEM
	db 37, SLASH ; pay day, given later
	db 44, SWAGGER ; slash, given prior
	db 49, NASTY_PLOT
    db 56, PAY_DAY
    db 61, DAZZLINGLEAM ; capitvate, new move
	db 65, NIGHT_SLASH
	db 70, PLAYROUGH
	db 0 ; no more level-up moves

CacneaEvosAttacks:
	db EVOLVE_LEVEL, 32, CACTURNE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POISON_STING
	db 5, ABSORB
	db 9, GROWTH
	db 13, LEECH_SEED
	db 17, MUD_SLAP ; Sand attack, Similar move
	db 21, MAGICAL_LEAF ; Egg move, Pin Missile given later
	db 25, LOW_SWEEP ; Ingrain, new move
	db 29, FAINT_ATTACK
	db 33, SPIKES 
	db 37, PIN_MISSILE
	db 41, NIGHT_SLASH ; Payback Similar Move
	db 45, SEED_BOMB ; Needle Arm, Similar move
	db 49, SCARY_FACE ; Cotton Spore, similar move
	db 53, SANDSTORM 
	db 57, DESTINY_BOND
	db 0 ; no more level up moves

CacturneEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY ; Move Relearner
	db 1, MEAN_LOOK ; move Relearner
	db 1, LEER
	db 1, POISON_STING
	db 1, ABSORB
	db 1, GROWTH
	db 1, LEECH_SEED
	db 1, MUD_SLAP ; Sand attack, Similar move
	db 1, MAGICAL_LEAF ; Egg move, Pin Missile given later
	db 1, LOW_SWEEP ; Ingrain, new move
	db 1, FAINT_ATTACK
	db 35, SPIKES 
	db 41, PIN_MISSILE
	db 47, NIGHT_SLASH ; Payback Similar Move
	db 53, SEED_BOMB ; Needle Arm, Similar move
	db 59, SCARY_FACE ; Cotton Spore, similar move
	db 65, SANDSTORM 
	db 71, DESTINY_BOND
	db 0 ; no more level up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SAFEGUARD
	db 10, MIRROR_COAT
	db 10, COUNTER
	db 30, ENCORE
	db 40, DESTINY_BOND
	db 0 ; no more level-up moves

MawileEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK ; Astonish, similar move
	db 1, GROWL
	db 5, FAIRY_WIND
	db 9, BITE
	db 13, FALSE_SWIPE ; Sweet Scent, Similar move to help catch
	db 17, METAL_CLAW ; Vicegrip, Similar move + STAB
	db 21, FAINT_ATTACK
	db 25, BATON_PASS
	db 29, CRUNCH
	db 33, BARRIER ; Iron Defense, similar move
	db 37, SUPER_FANG ; Sucker Punch, MT move
	db 41, ENCORE ; Stockpile, new move similar to taunt
	db 45, IRON_HEAD
	db 49, PLAYROUGH
	db 55, LOVELY_KISS ; new move
	db 60, SWORDS_DANCE ; new move
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, BIDE ; Mudsport/Rock Polish new move
	db 10, ROLLOUT
	db 12, MAGNITUDE
	db 16, ROCK_THROW
	db 18, AGILITY ; rock polish, similar move
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	db 28, SPIKES ; stealth rock, similar move
	db 30, ROCK_SLIDE ; Rock Blast, Similar move
	db 34, EARTHQUAKE
	db 36, EXPLOSION
	db 40, DOUBLE_EDGE
	db 42, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 41, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, BIDE ; Mudsport/Rock Polish new move
	db 1, ROLLOUT
	db 1, MAGNITUDE
	db 1, ROCK_THROW
	db 1, AGILITY ; rock polish, similar move
	db 1, BULLDOZE
	db 1, SELFDESTRUCT
	db 30, SPIKES ; stealth rock, similar move
	db 34, ROCK_SLIDE ; Rock Blast, Similar move
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
	db 54, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE ; Move Relearner
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, BIDE ; Mudsport/Rock Polish new move
	db 1, ROLLOUT
	db 1, MAGNITUDE
	db 1, ROCK_THROW
	db 1, AGILITY ; rock polish, similar move
	db 1, BULLDOZE
	db 1, SELFDESTRUCT
	db 1, SPIKES ; stealth rock, similar move
	db 1, ROCK_SLIDE ; Rock Blast, Similar move
	db 1, EARTHQUAKE
	db 47, EXPLOSION
	db 53, DOUBLE_EDGE
	db 58, STONE_EDGE
	db 64, METEOR_MASH ; Heavy Slam, Similar move
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, KARATE_CHOP
	db 5, FOCUS_ENERGY
	db 9, LOCK_ON
	db 13, LOW_SWEEP
	db 15, SEISMIC_TOSS
	db 19, PROTECT ; Revenge, new move
	db 21, THIEF ; Knock off similar move
	db 25, TAKE_DOWN ; Vital Throw, new move
	db 28, BULLET_PUNCH ; Dual Cop, new move
	db 33, ROCK_SMASH ; Submission, new move
	db 37, BULK_UP
	db 39, CROSS_CHOP
	db 43, SCARY_FACE
	db 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 41, MACHAMP
	db 0 ; no more evolutions
	db 1, LEER
	db 1, KARATE_CHOP
	db 5, FOCUS_ENERGY
	db 1, LOCK_ON
	db 1, LOW_SWEEP
	db 1, SEISMIC_TOSS
	db 1, PROTECT ; revenge, new move
	db 1, THIEF ; Knock off similar move
	db 1, TAKE_DOWN ; Vital Throw, new move
	db 1, BULLET_PUNCH ; Dual Cop, new move
	db 33, ROCK_SMASH ; Submission, new move
	db 37, BULK_UP
	db 43, CROSS_CHOP
	db 47, SCARY_FACE
	db 53, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLOSECOMBAT ; Move Relearner
	db 1, LEER
	db 1, KARATE_CHOP
	db 5, FOCUS_ENERGY
	db 1, LOCK_ON
	db 1, LOW_SWEEP
	db 1, SEISMIC_TOSS
	db 1, PROTECT ; revenge, new move
	db 1, THIEF ; Knock off similar move
	db 1, TAKE_DOWN ; Vital Throw, new move
	db 1, BULLET_PUNCH ; Dual Cop, new move
	db 1, ROCK_SMASH ; Submission, new move
	db 1, BULK_UP
	db 44, CROSS_CHOP
	db 48, SCARY_FACE
	db 55, DYNAMICPUNCH
	db 60, IRON_HEAD
	db 0 ; no more level-up moves


AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, ROAR ; teleport, similar move TP = BP
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_TRADE, 41, ALAKAZAM
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, HIDDEN_POWER
	db 16, CONFUSION
	db 18, BARRIER ; Disable, new move
	db 22, SWIFT ; Miracle Eye, new move
	db 24, TELEPORT ; ally switch, similar move
	db 28, PSYBEAM
	db 30, REFLECT
	db 34, LOCK_ON ; Telekinesis, similar move
	db 36, RECOVER
	db 40, PSYCHIC_M ; Im not giving Psycho Cut lmao
	db 44, CALM_MIND
	db 48, FUTURE_SIGHT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, MYSTICALFIRE
	db 1, ENCORE ; Move Relearner
	db 1, ROAR
	db 1, HIDDEN_POWER
	db 1, CONFUSION
	db 1, BARRIER ; Disable, new move
	db 1, SWIFT ; Miracle Eye, new move
	db 1, TELEPORT ; ally switch, similar move
	db 1, PSYBEAM
	db 1, REFLECT
	db 1, LOCK_ON ; Telekinesis, similar move
	db 1, RECOVER
	db 1, PSYCHIC_M ; Im not giving Psycho Cut lmao
	db 46, CALM_MIND
	db 50, FUTURE_SIGHT
	db 0 ; no more level-up moves


GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 5, SMOG ; Spite, new move
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 24, SLUDGE ; Suckerpunch + Payback, new move
	db 29, HEX ; swapped order with shadow ball
	db 33, DREAM_EATER
	db 36, DARK_PULSE
	db 40, DESTINY_BOND
	db 43, SHADOW_BALL
	db 47, SLUDGE_BOMB ; Nightmare, new move
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 41, GENGAR
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 5, SMOG ; Spite, new move
	db 1, MEAN_LOOK
	db 1, CURSE
	db 1, NIGHT_SHADE
	db 1, CONFUSE_RAY
	db 1, SLUDGE ; Suckerpunch + Payback, new move
	db 27, SHADOW_PUNCH
	db 33, HEX ; swapped order with shadow ball
	db 39, DREAM_EATER
	db 44, DARK_PULSE
	db 50, DESTINY_BOND
	db 55, SHADOW_BALL
	db 61, SLUDGE_BOMB ; Nightmare, new move
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT ; Move Relearner
	db 1, HAZE ; Move Relearner
	db 1, LICK
	db 1, HYPNOSIS
	db 5, SMOG ; Spite, new move
	db 1, MEAN_LOOK
	db 1, CURSE
	db 1, NIGHT_SHADE
	db 1, CONFUSE_RAY
	db 1, SLUDGE ; Suckerpunch + Payback, new move
	db 1, SHADOW_PUNCH
	db 1, HEX ; swapped order with shadow ball
	db 1, DREAM_EATER
	db 41, PERISH_SONG
	db 46, DARK_PULSE
	db 52, DESTINY_BOND
	db 57, SHADOW_BALL
	db 63, SLUDGE_BOMB ; Nightmare, new move
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 5, HOWL ; new move, roar given later
	db 8, EMBER
	db 10, LEER
	db 12, REVERSAL ; Helping hand, new move given in reversal slot
	db 17, FLAME_WHEEL
	db 21, BONE_CLUB ; Fire Fang/Reversal, new move
	db 23, TAKE_DOWN
	db 28, ROAR
	db 30, AGILITY
	db 32, CRUSH_CLAW ; retaliate, similar move	
	db 34, FLAMETHROWER
	db 39, CRUNCH
	db 41, HEAT_WAVE
	db 43, OUTRAGE
	db 45, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, WILD_CHARGE ; Move relearner
	db 1, CLOSECOMBAT ; move relearner
	db 1, BITE
	db 5, HOWL ; new move, roar given later
	db 8, EMBER
	db 1, LEER
	db 1, REVERSAL ; Helping hand, new move given in reversal slot
	db 1, FLAME_WHEEL
	db 1, BONE_CLUB ; Fire Fang/Reversal, new move
	db 1, TAKE_DOWN
	db 1, ROAR
	db 1, AGILITY
	db 1, CRUSH_CLAW ; retaliate, similar move	
	db 1, FLAMETHROWER
	db 1, CRUNCH
	db 1, HEAT_WAVE
	db 43, OUTRAGE
	db 45, FLARE_BLITZ
	db 52, MORNING_SUN
	db 59, EXTREMESPEED
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 4, LEER
	db 7, ROAR
	db 10, ICE_SHARD
	db 12, CONFUSE_RAY
	db 15, FAIRY_WIND ; ICY WIND, new move
	db 18, SNARL ; Payback, New Move
	db 20, CHARM ; Mist, egg move
	db 23, AURORA_BEAM
	db 26, DRAININGKISS ; Hex, new move
	db 28, HAIL ; faint attack, new move 
	db 34, SAFEGUARD
	db 36, ICE_BEAM
	db 39, LOVELY_KISS ;Imprison
	db 42, BLIZZARD
	db 46, PAIN_SPLIT ; new move
	db 50, MOONBLAST ; egg move
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, ICE_BEAM
	db 1, DAZZLINGLEAM
	db 1, NASTY_PLOT
	db 50, BLIZZARD
	db 56, PAIN_SPLIT
	db 62, MOONBLAST
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, POUND ; scratch, similar move
	db 5, LEER ; tail whip, similar move
	db 8, WATER_GUN
	db 11, CONFUSION
	db 15, SCREECH ; replaced order with Fury attack  
	db 18, BUBBLEBEAM
	db 22, ENCORE ; disable, similar move
	db 25, FURY_ATTACK
	db 29, PSYBEAM ; Aqua Tail, new move
	db 32, AMNESIA ; swapped order with zenheadbutt
	db 36, CONFUSE_RAY ; soak, new move
	db 40, REST ; Psych Up new move
	db 43, ZENHEADBUTT
	db 46, HYDRO_PUMP
	db 52, SLEEP_TALK ; wonder room, new move
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, AQUA_JET ; Move Relearner
	db 1, POUND ; scratch, similar move
	db 1, LEER ; tail whip, similar move
	db 1, WATER_GUN
	db 1, CONFUSION
	db 1, SCREECH ; replaced order with Fury attack  
	db 1, BUBBLEBEAM
	db 1, ENCORE ; disable, similar move
	db 1, FURY_ATTACK
	db 1, PSYBEAM ; Aqua Tail, new move
	db 1, AMNESIA ; swapped order with zenheadbutt
	db 38, CONFUSE_RAY ; soak, new move
	db 43, REST ; Psych Up new move
	db 49, ZENHEADBUTT
	db 54, HYDRO_PUMP
	db 60, SLEEP_TALK ; wonder room, new move
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, POUND ; scratch similar move has a lot of random moves at lvl 1 so took librities
	db 1, LEER
	db 6, LICK
	db 9, METAL_CLAW ; egg move
	db 12, COVET
	db 17, RAGE ; new move
	db 22, STOMP
	db 25, FAINT_ATTACK
	db 28, CHARM 
	db 32, SLASH
	db 36, CRUSH_CLAW
	db 40, BELLY_DRUM ; EGG MOVE
	db 43, SLEEP_TALK
	db 43, REST
	db 47, NIGHT_SLASH
	db 50, THRASH
	db 57, PLAYROUGH ;Fling, new move 
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, GLARE ; Move Relearner
	db 1, POUND ; scratch similar move has a lot of random moves at lvl 1 so took librities
	db 1, LEER
	db 1, LICK
	db 1, METAL_CLAW ; egg move
	db 1, COVET
	db 1, RAGE ; new move
	db 1, STOMP
	db 1, FAINT_ATTACK
	db 1, CHARM 
	db 30, SLASH
	db 38, CRUSH_CLAW
	db 42, BELLY_DRUM ; EGG MOVE
	db 46, NIGHT_SLASH
	db 49, SLEEP_TALK
	db 49, REST
	db 54, THRASH
	db 61, PLAYROUGH ;Fling, new move 
	db 67, CROSS_CHOP
	db 0 ; no more level-up moves


MakuhitaEvosAttacks:
	db EVOLVE_LEVEL, 24, HARIYAMA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 5, MUD_SLAP ; Sand attack, similar move
	db 9, KARATE_CHOP ; arm thrust, similar move
	db 13, BIDE ; Fake out, new move
	db 16, WHIRLWIND
	db 19, THIEF ; knock off, new move
	db 22, FORCE_PALM ; vital throw, similar move
	db 25, BELLY_DRUM
	db 28, FLAIL ; Smelling Salts, new move
	db 31, SEISMIC_TOSS
	db 34, ROCK_SMASH ; Wake up slap, similar move
	db 37, ENDURE
	db 40, CLOSECOMBAT
	db 43, REVERSAL
	db 46, METEOR_MASH ; Heavy Slam, similar move
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BULLET_PUNCH ;egg move
	db 1, LOCK_ON ; Egg move
	db 1, TACKLE
	db 1, FOCUS_ENERGY
	db 1, MUD_SLAP ; Sand attack, similar move
	db 1, KARATE_CHOP ; arm thrust, similar move
	db 1, BIDE ; Fake out, new move
	db 1, WHIRLWIND
	db 1, THIEF ; knock off, new move
	db 1, FORCE_PALM ; vital throw, similar move
	db 26, BELLY_DRUM
	db 30, FLAIL ; Smelling Salts, new move
	db 34, SEISMIC_TOSS
	db 38, ROCK_SMASH ; Wake up slap, similar move
	db 42, ENDURE
	db 46, CLOSECOMBAT
	db 50, REVERSAL
	db 54, METEOR_MASH ; Heavy Slam, similar move
	db 0 ; no more level-up moves

MedititeEvosAttacks:
	db EVOLVE_LEVEL, 37, MEDICHAM
	db 0 ; no more evolutions
	db 1, BIDE
	db 4, HOWL ;meditate, similar move
	db 7, CONFUSION
	db 9, PROTECT
	db 12, ENDURE
	db 15, STOMP ;Feint New move
	db 17, FORCE_PALM
	db 20, HIDDEN_POWER
	db 23, CALM_MIND
	db 25, LOCK_ON ; Mind Reader, similar move
	db 28, JUMP_KICK
	db 31, AGILITY ; Psych Up, New move
	db 33, TELEPORT ; acupressure, new move
	db 36, ZENHEADBUTT ; power trick, new move
	db 39, REVERSAL
	db 41, RECOVER
	db 44, COUNTER
	db 48, HI_JUMP_KICK
	db 0 ; no more level-up moves

MedichamEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURA_SPHERE
	db 1, DRAIN_PUNCH ; Move relearner
	db 1, MACH_PUNCH ; move relearner
	db 1, BIDE
	db 1, HOWL ;meditate, similar move
	db 1, CONFUSION
	db 1, PROTECT
	db 1, ENDURE
	db 1, STOMP ;Feint New move
	db 1, FORCE_PALM
	db 1, HIDDEN_POWER
	db 1, CALM_MIND
	db 1, LOCK_ON ; Mind Reader, similar move
	db 1, JUMP_KICK
	db 1, AGILITY ; Psych Up, New move
	db 1, TELEPORT ; acupressure, new move
	db 37, ZENHEADBUTT ; power trick, new move
	db 42, REVERSAL
	db 47, RECOVER
	db 53, COUNTER
	db 58, HI_JUMP_KICK
	db 0 ; no more level-up moves


ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POUND
	db 7, FAIRY_WIND ; Sing given later
	db 11, SING 
	db 13, DEFENSE_CURL
	db 18, COVET ; new move
	db 22, DRAININGKISS ; wakeup slack, New move
	db 25, BARRIER ; minimize, similar move
	db 30, METRONOME
	db 34, AMNESIA
	db 39, BODY_SLAM
	db 44, MOONBLAST
	db 48, METEOR_MASH
	db 52, SUBSTITUTE
	db 58, HEAL_BELL
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POUND
	db 1, FAIRY_WIND ; Sing given later
	db 1, SING 
	db 1, SOFTBOILED
	db 50, MOONBLAST
	db 58, METEOR_MASH
	db 63, SUBSTITUTE
	db 71, HEAL_BELL
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, WRAP ;bind, similar move
	db 10, ROCK_THROW
	db 13, RAGE
	db 16, SPIKES ;Steal Rock, Similar move 
	db 19, AGILITY ;Rock Polish, Similar move
	db 22, BIDE ; Gyro Ball, New move
	db 25, DRAGONBREATH
	db 28, BULLDOZE ; Slam, new move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, FURY_ATTACK ; sand tomb, similar move
	db 40, IRON_HEAD ;iron tail, similar move
	db 43, CURSE 
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZAP_CANNON ; move relearner
	db 1, EXPLOSION ; move relearner
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, WRAP ;bind, similar move
	db 10, ROCK_THROW
	db 13, RAGE
	db 16, SPIKES ;Steal Rock, Similar move 
	db 19, AGILITY ;Rock Polish, Similar move
	db 22, BIDE ; Gyro Ball, New move
	db 25, DRAGONBREATH
	db 28, BULLDOZE ; Slam, new move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, FURY_ATTACK ; sand tomb, similar move
	db 40, IRON_HEAD ;iron tail, similar move
	db 43, CURSE 
	db 46, STONE_EDGE
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 25, VENOMOTH
	db 0 ; no more evolutions
	db 1, LOCK_ON ; Foresight, similar move
	db 1, TACKLE
	db 4, STRING_SHOT ; Disable, new move
	db 8, CONFUSE_RAY ; Supersonic Similar move
	db 12, CONFUSION
	db 16, STUN_SPORE
	db 20, SLUDGE ; leech life, given later
	db 24, PSYBEAM
	db 28, SLEEP_POWDER
	db 32, SIGNAL_BEAM
	db 35, ZENHEADBUTT
	db 41, TOXIC ; stun spore given earlier to make up for lack of poison powder
	db 47, LEECH_LIFE
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, MORNING_SUN ; Move Tutor
	db 1, LOCK_ON ; Foresight, similar move
	db 1, TACKLE
	db 1, STRING_SHOT ; Disable, new move
	db 1, CONFUSE_RAY ; Supersonic Similar move
	db 1, CONFUSION
	db 1, STUN_SPORE
	db 1, SLUDGE ; leech life, given later
	db 1, PSYBEAM
	db 28, SLEEP_POWDER
	db 32, SIGNAL_BEAM
	db 37, ZENHEADBUTT
	db 41, TOXIC ; stun spore given earlier to make up for lack of poison powder
	db 47, LEECH_LIFE
	db 55, PSYCHIC_M
	db 63, BUG_BUZZ
	;db 70, QUIVERDANCE
	db 0 ; no more level-up moves	

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, FURY_CUTTER ; Bug Bite, Similar Move
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	db 23, CURSE ;Natural gift
	db 28, SPIKES
	db 31, NIGHT_SLASH ; payback, simimlar move
	db 34, EXPLOSION
	db 39, BARRIER ; iron defense, similar move
	db 42, IRON_HEAD ; gyro ball, similar move
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN ; MOVE RELEARNER
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 1, FURY_CUTTER ; Bug Bite, Similar Move
	db 1, TAKE_DOWN
	db 1, RAPID_SPIN
	db 1, BIDE
	db 1, CURSE ;Natural gift
	db 1, SPIKES
	db 36, NIGHT_SLASH ; payback, simimlar move
	db 42, EXPLOSION
	db 46, BARRIER ; iron defense, similar move
	db 50, IRON_HEAD ; gyro ball, similar move
	db 56, DOUBLE_EDGE
	db 60, ZAP_CANNON
	db 60, LOCK_ON
	db 70, TWINEEDLE
	db 0 ; no more level-up moves


LotadEvosAttacks:
	db EVOLVE_LEVEL, 14, LOMBRE
	db 0 ; no more evolutions
	db 1, LICK ; Astonish, similar move
	db 3, GROWL
	db 6, ABSORB
	db 9, WATER_GUN
	db 12, SCARY_FACE ;Natural Gift, New move
	db 16, MEGA_DRAIN
	db 21, BUBBLEBEAM
	db 24, FLAIL ; nature power, egg move
	db 27, RAIN_DANCE
	db 30, GIGA_DRAIN
	db 33, ZENHEADBUTT
	db 36, ENERGY_BALL
	db 0 ; no more level-up moves

LombreEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0 ; no more evolutions
	db 1, LICK ; Astonish, similar move
	db 3, GROWL
	db 1, ABSORB
	db 1, WATER_GUN
	db 1, SCARY_FACE ;Natural Gift, New move
	db 16, MEGA_DRAIN
	db 20, AQUA_JET
	db 24, BUBBLEBEAM
	db 28, FLAIL ; nature power, egg move
	db 32, RAIN_DANCE
	db 36, GIGA_DRAIN
	db 40, ZENHEADBUTT
	db 44, ENERGY_BALL
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH ; Move Relearner
	db 1, LEECH_SEED ; Move Relearner
	db 1, ABSORB
	db 1, GROWL
	db 1, WATER
	db 1, MEGA_DRAIN
	db 1, FLAIL
	db 1, GROWTH
	db 1, BUBBLEBEAM
	db 1, RAIN_DANCE
	db 1, ZENHEADBUTT
	db 1, ENERGY_BALL
	db 65, HYPER_VOICE
	db 70, HYDRO_PUMP
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POUND
	db 4, DEFENSE_CURL ;harden, similar move
	db 7, MUD_SLAP
	db 12, ACID ; disable, new move
	db 15, MUD_SHOT
	db 18, SLUDGE
	db 21, SCARY_FACE ;Minimize, egg move
	db 26, SHADOW_PUNCH ; Fling, egg move
	db 29, SCREECH ; Sludge Bomb given later
	db 32, BARRIER ; Acid Armor
	db 37, SLUDGE_BOMB
	db 44, CRUNCH
	db 46, HAZE ; Belch, egg move
	db 52, MEAN_LOOK ; egg move
	db 57, GUNK_SHOT 
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE ; Move relearner
	db 1, POUND
	db 1, DEFENSE_CURL ;harden, similar move
	db 1, MUD_SLAP
	db 1, ACID ; disable, new move
	db 1, MUD_SHOT
	db 1, SLUDGE
	db 1, SCARY_FACE ;Minimize, egg move
	db 1, SHADOW_PUNCH ; Fling, egg move
	db 1, SCREECH ; Sludge Bomb given later
	db 1, BARRIER ; Acid Armor
	db 1, SLUDGE_BOMB
	db 46, CRUNCH
	db 48, HAZE ; Belch, egg move
	db 54, MEAN_LOOK ; egg move
	db 59, GUNK_SHOT 
	db 0 ; no more level-up moves


MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY ; supersonic, similar move
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 1, MIRROR_SHOT
	db 1, SPARK
	db 1, SHOCK_WAVE
	db 1, BARRIER ; Metal Sound, egg move similar to iron defense
	db 1, SWIFT ; Electroball, new move
	db 35, SCREECH
	db 40, THUNDERBOLT
	db 45, LIGHT_SCREEN ; Magnet Rize
	db 45, REFLECT
	db 47, FLASH_CANNON
	db 50, LOCK_ON
	db 55, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, MAGNEZONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY ; supersonic, similar move
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 1, MIRROR_SHOT
	db 1, SPARK
	db 1, SHOCK_WAVE
	db 1, BARRIER ; Metal Sound, egg move similar to iron defense
	db 1, SWIFT ; Electroball, new move
	db 36, TRI_ATTACK
	db 39, SCREECH
	db 43, THUNDERBOLT
	db 49, LIGHT_SCREEN ; Magnet Rise new move
	db 49, REFLECT
	db 53, FLASH_CANNON
	db 63, LOCK_ON
	db 65, ZAP_CANNON
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, MIRROR_COAT ; MOVE RELEARNER
	db 1, TACKLE
	db 1, CONFUSE_RAY ; supersonic, similar move
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 1, MIRROR_SHOT
	db 1, SPARK
	db 1, SHOCK_WAVE
	db 1, BARRIER ; Metal Sound, egg move similar to iron defense
	db 1, SWIFT ; Electroball, new move
	db 36, TRI_ATTACK
	db 39, SCREECH
	db 43, THUNDERBOLT
	db 49, LIGHT_SCREEN ; Magnet Rise new move
	db 49, REFLECT
	db 53, FLASH_CANNON
	db 63, LOCK_ON
	db 65, ZAP_CANNON
	db 0 ; no more level-up moves


CroagunkEvosAttacks:
	db EVOLVE_LEVEL, 37, TOXICROAK
	db 0 ; no more evolutions
	db 1, LICK ; Astonish, similar move
	db 3, MUD_SLAP
	db 8, POISON_STING
	db 10, ENCORE ; Taunt, Similar move
	db 15, FAINT_ATTACK 
	db 18, FORCE_PALM
	db 22, SWAGGER
	db 28, MUD_SHOT
	db 31, BULLET_PUNCH ; Sucker Punch, egg move
	db 36, SLUDGE ; Venoshock, similar move
	db 41, NASTY_PLOT
	db 49, POISON_JAB
	db 54, DRAIN_PUNCH ; Sludge bomb, egg move
	db 58, EARTH_POWER
	db 62, CROSS_CHOP ; egg move
	db 66, GUNK_SHOT
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE ; Move Relearner
	db 1, LICK ; Astonish, similar move
	db 1, MUD_SLAP
	db 1, POISON_STING
	db 1, ENCORE ; Taunt, Similar move
	db 1, FAINT_ATTACK 
	db 1, FORCE_PALM
	db 1, SWAGGER
	db 1, MUD_SHOT
	db 1, BULLET_PUNCH ; Sucker Punch, egg move
	db 1, SLUDGE ; Venoshock, similar move
	db 38, NASTY_PLOT
	db 43, POISON_JAB
	db 45, DRAIN_PUNCH ; Sludge bomb, egg move
	db 47, EARTH_POWER
	db 50, CROSS_CHOP ; egg move
	db 54, GUNK_SHOT
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 4, BARRIER
	db 8, CONFUSION
	db 11, FAIRY_WIND
	db 15, MIMIC
	db 18, PROTECT
	db 23, PSYBEAM
	db 28, LIGHT_SCREEN
	db 28, REFLECT
	db 32, SAFEGUARD
	db 36, DAZZLINGLEAM
	db 40, ENCORE
	db 44, PSYCHIC_M
	db 50, CONFUSE_RAY
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions 
	db 1, TACKLE ; took liberties phanpy learns some godawful moves leveling up
	db 1, GROWL
	db 5, DEFENSE_CURL
	db 8, MUD_SLAP
	db 13, HORN_ATTACK
	db 16, ROLLOUT 
	db 20, CHARM
	db 23, BULLDOZE
	db 26, TAKE_DOWN
	db 30, FOCUS_ENERGY
	db 33, BODY_SLAM
	db 38, ROCK_SLIDE
	db 42, SANDSTORM
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZENHEADBUTT ; Move Relearner
	db 1, RAPID_SPIN ; Mover relearner
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, MUD_SLAP
	db 1, HORN_ATTACK
	db 1, ROLLOUT 
	db 1, CHARM
	db 1, BULLDOZE
	db 28, TAKE_DOWN
	db 32, FOCUS_ENERGY
	db 36, BODY_SLAM
	db 40, ROCK_SLIDE
	db 45, SANDSTORM
	db 50, EARTHQUAKE
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

BunearyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, LOPUNNY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, SPLASH
	db 4, DEFENSE_CURL
	db 8, QUICK_ATTACK
	db 12, CHARM ; baby doll eyes, similar move
	db 16, DOUBLE_KICK
	db 20, STOMP
	db 24, AGILITY
	db 26, COVET
	db 28, BATON_PASS
	db 32, ENCORE ; after you, egg move
	db 36, JUMP_KICK
	db 41, ENDURE
	db 41, FLAIL
	db 46, BLAZE_KICK ; new move
	db 50, LOVELY_KISS ; egg move
	db 56, ATTRACT
	db 63, HI_JUMP_KICK
	db 0 ; no more level-up moves

LopunnyEvosAttacks:
	db 0 ; no more evolutions
	db 1, WILD_CHARGE ; move relearner
	db 1, POUND
	db 1, SPLASH
	db 4, DEFENSE_CURL
	db 8, QUICK_ATTACK
	db 12, CHARM ; baby doll eyes, similar move
	db 16, DOUBLE_KICK
	db 20, STOMP
	db 24, AGILITY
	db 26, COVET
	db 28, BATON_PASS
	db 32, ENCORE ; after you, egg move
	db 36, JUMP_KICK
	db 41, ENDURE
	db 41, FLAIL
	db 46, BLAZE_KICK ; new move
	db 50, LOVELY_KISS ; egg move
	db 56, ATTRACT
	db 63, HI_JUMP_KICK
	db 0 ; no more level-up moves


ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL 
	db 7, RAZOR_LEAF
	db 9, FAIRY_WIND
	db 12, STUN_SPORE
	db 15, CHARM ;new move 
	db 17, REFLECT
	db 20, MAGICAL_LEAF
	db 23, DRAININGKISS
	db 28, BODY_SLAM
	db 31, ANCIENTPOWER ; egg move
	db 34, MORNING_SUN ;Synthesis, similar move
	db 39, SAFEGUARD
	db 42, HEAL_BELL ; Armoaherary, similar move
	db 45, SEED_BOMB
	db 50, MOONBLAST ; New Move
	db 55, SEED_FLARE ; New move
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL 
	db 1, RAZOR_LEAF
	db 1, FAIRY_WIND
	db 1, STUN_SPORE
	db 1, CHARM ;new move 
	db 18, REFLECT
	db 22, MAGICAL_LEAF
	db 26, DRAININGKISS
	db 32, BODY_SLAM
	db 36, ANCIENTPOWER ; egg move
	db 40, MORNING_SUN ;Synthesis, similar move
	db 46, SAFEGUARD
	db 50, HEAL_BELL ; Armoaherary, similar move
	db 54, SEED_BOMB
	db 60, MOONBLAST ; New Move
	db 65, SEED_FLARE ; New move
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED ; Move Relearner
	db 1, SWORDS_DANCE ; Move Relearner
	db 1, TACKLE
	db 1, GROWL 
	db 1, RAZOR_LEAF
	db 1, FAIRY_WIND
	db 1, STUN_SPORE
	db 1, CHARM ;new move 
	db 1, REFLECT
	db 1, MAGICAL_LEAF
	db 1, DRAININGKISS
	db 1, BODY_SLAM
	db 35, GIGA_DRAIN
	db 40, ANCIENTPOWER ; egg move
	db 46, MORNING_SUN ;Synthesis, similar move
	db 54, SAFEGUARD
	db 60, HEAL_BELL ; Armoaherary, similar move
	db 66, SEED_BOMB
	db 70, MOONBLAST ; New Move
	db 75, SEED_FLARE ; New move
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOG ;smoke screen, similar move
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 22, DEFENSE_CURL
	db 26, SWIFT
	db 31, SLUDGE
	db 37, FLAMETHROWER
	db 46, ROLLOUT
	db 49, DOUBLE_EDGE
	db 55, SUNNY_DAY
	db 58, FIRE_SPIN
	db 62, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOG ;smoke screen, similar move
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	db 33, SLUDGE
	db 39, FLAMETHROWER
	db 46, ROLLOUT
	db 53, DOUBLE_EDGE
	db 57, SUNNY_DAY
	db 64, FIRE_SPIN
	db 68, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, HOWL ; move relearner
	db 1, TACKLE
	db 1, LEER
	db 1, SMOG ;smoke screen, similar move
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, FLAME_WHEEL
	db 1, DEFENSE_CURL
	db 1, SWIFT
	db 1, SLUDGE
	db 36, WILL_O_WISP
	db 40, FLAMETHROWER
	db 43, SLUDGE_BOMB
	db 48, ROLLOUT
	db 56, DOUBLE_EDGE
	db 61, SUNNY_DAY
	db 69, FIRE_SPIN
	db 74, FIRE_BLAST
	db 80, GUNK_SHOT
	db 0 ; no more level-up moves


TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 7, RAGE
	db 9, WATER_GUN
	db 13, BITE
	db 15, SCARY_FACE
	db 20, METAL_CLAW ; ice fang, egg move
	db 22, FLAIL  
	db 27, SLASH ; swapped spots with crunch
	db 29, SCREECH
	db 34, CRUNCH
	db 36, THRASH
	db 41, SUPER_FANG ; Aqua tail, new move
	db 43, SWORDS_DANCE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 1, BITE
	db 1, SCARY_FACE
	db 21, METAL_CLAW ; ice fang, egg move
	db 24, FLAIL  
	db 28, SLASH ; swapped spots with crunch
	db 33, SCREECH
	db 39, CRUNCH
	db 42, THRASH
	db 48, SUPER_FANG ; Aqua tail, new move
	db 51, SWORDS_DANCE
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, AQUA_JET ; move relearner
	db 1, POUND
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 1, BITE
	db 1, SCARY_FACE
	db 1, METAL_CLAW ; ice fang, egg move
	db 1, FLAIL  
	db 1, SLASH ; swapped spots with crunch
	db 30, CROSS_CHOP
	db 37, SCREECH
	db 45, CRUNCH
	db 50, THRASH
	db 63, SUPER_FANG ; Aqua tail, new move
	db 71, SWORDS_DANCE
	db 76, HYDRO_PUMP
	db 0 ; no more level-up moves

TaillowEvosAttacks:
	db EVOLVE_LEVEL, 22, SWELLOW
	db 0 ; no more evolutions
	db 1, ECHOED_VOICE ;Liberties taken to make it more special attacking focused
	db 1, MUD_SLAP ; Sand attack equivalent
	db 5, GUST
	db 8, FOCUS_ENERGY
	db 13, QUICK_ATTACK
	db 17, AIR_CUTTER ;wing attack special equivalent
	db 22, WHIRLWIND
	db 25, CAPTIVATE
	db 29, AGILITY
	db 33, AIR_SLASH
	db 37, HYPER_VOICE
	db 41, HURRICANE
	db 0 ; no more level-up moves

SwellowEvosAttacks:
	db 0 ; no more evolutions
	db 1, BRAVE_BIRD ; move relearner
	db 1, ECHOED_VOICE ;Liberties taken to make it more special attacking focused
	db 1, MUD_SLAP ; Sand attack equivalent
	db 1, GUST
	db 1, FOCUS_ENERGY
	db 1, QUICK_ATTACK
	db 1, AIR_CUTTER ;wing attack special equivalent
	db 1, WHIRLWIND
	db 24, FLAIL
	db 27, CAPTIVATE
	db 22, AGILITY
	db 39, AIR_SLASH
	db 45, HYPER_VOICE
	db 51, HURRICANE
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 8, THUNDERSHOCK
	db 11, THUNDER_WAVE
	db 15, SCARY_FACE  ; Cotton Spoe, Similar move
	db 18, TAKE_DOWN
	db 22, SHOCK_WAVE ;Electroball similar move
	db 25, CONFUSE_RAY
	db 29, POWER_GEM
	db 32, SAFEGUARD ;Cotton Guard, similar move
	db 36, SIGNAL_BEAM
	db 39, THUNDERBOLT ;Discharge, similar move
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 1, SCARY_FACE  ; Cotton Spoe, Similar move
	db 18, THUNDERPUNCH
	db 20, TAKE_DOWN
	db 25, SHOCK_WAVE ;Electroball similar move
	db 29, CONFUSE_RAY
	db 34, POWER_GEM
	db 38, SAFEGUARD ;Cotton Guard, similar move
	db 43, SIGNAL_BEAM
	db 47, THUNDERBOLT ;Discharge, similar move
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEAL_BELL ; Move Learner
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 1, SCARY_FACE  ; Cotton Spoe, Similar move
	db 1, THUNDERPUNCH
	db 1, TAKE_DOWN
	db 1, SHOCK_WAVE ;Electroball similar move
	db 1, CONFUSE_RAY
	db 30, DRAGONBREATH
	db 35, POWER_GEM
	db 40, SAFEGUARD ;Cotton Guard, similar move
	db 46, SIGNAL_BEAM
	db 51, THUNDERBOLT ;Discharge, similar move
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 65, DRAGON_PULSE
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	db EVOLVE_LEVEL, 20, MILOTIC
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	db 1, ATTRACT
	db 1, WATER_GUN
	db 1, WRAP
	db 1, TWISTER
	db 20, FAIRY_WIND
	db 25, BUBBLEBEAM
	db 30, AURORA_BEAM
	db 35, RECOVER
	db 40, HYPER_VOICE
	db 45, HYPNOSIS
	db 50, RAIN_DANCE
	db 55, SAFEGUARD
	db 60, DRAGON_PULSE
	db 65, HYDRO_PUMP
	db 70, HYPER_BEAM
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 20, BITE
    db 25, BUBBLEBEAM
    db 30, LEER
    db 35, TAKE_DOWN
    db 40, CRUNCH
    db 45, DOUBLE_EDGE
    db 50, RAIN_DANCE
    db 55, HYDRO_PUMP
    db 60, DRAGON_DANCE
    db 65, OUTRAGE
    db 70, HYPER_BEAM
   	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WEAVILE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POUND ; Scratch, Similar move
	db 8, HOWL ; new move, hone claws equivalent
	db 12, QUICK_ATTACK
	db 16, FAINT_ATTACK
	db 20, AGILITY
	db 26, METAL_CLAW
	db 32, ICE_SHARD
	db 36, CRUSH_CLAW
	db 38, SCREECH
	db 42, SLASH
	db 46, NIGHT_SLASH
	db 52, SWORDS_DANCE
	db 60, ICICLECRASH
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUPER_FANG ; Move relearner
	db 1, LEER
	db 1, POUND ; Scratch, Similar move
	db 8, HOWL ; new move, hone claws equivalent
	db 12, QUICK_ATTACK
	db 16, FAINT_ATTACK
	db 20, AGILITY
	db 26, METAL_CLAW
	db 32, ICE_SHARD
	db 36, CRUSH_CLAW
	db 38, SCREECH
	db 42, SLASH
	db 46, NIGHT_SLASH
	db 52, SWORDS_DANCE
	db 60, ICICLECRASH
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 5, WHIRLWIND ; egg move
	db 11, HAZE
	db 15, AERIAL_ACE ; wing attack, similar move
	db 21, NIGHT_SHADE
	db 25, FAINT_ATTACK ; assurance, similar move
	db 31, ENCORE ; taunt, similar move
	db 35, THIEF
	db 41, MEAN_LOOK
	db 45, DRILL_PECK ; egg move
	db 50, PERISH_SONG ; Egg move
	db 55, NIGHT_SLASH ; sucker punch
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, WHIRLWIND 
	db 1, HAZE
	db 1, DRILL_PECK 
	db 1, FAINT_ATTACK 
	db 25, SWAGGER
	db 35, NASTY_PLOT
	db 45, PAY_DAY
	db 55, NIGHT_SLASH
	db 65, BRAVE_BIRD
	db 75, DARK_PULSE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, LICK ; Astonish, Similar move
	db 5, CURSE
	db 10, MEAN_LOOK
	db 14, CONFUSE_RAY
	db 19, HEX
	db 23, MAGICAL_LEAF ; new move
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, SNARL ; payback, similar move
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, POWER_GEM
	db 55, MYSTICALFIRE
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, ENERGY_BALL
	db 1, NASTY_PLOT
	db 1, MEAN_LOOK
	db 1, CONFUSE_RAY
	db 1, HEX
	db 1, PAIN_SPLIT
	db 1, MAGICAL_LEAF
	db 1, SHADOW_BALL
	db 1, PERISH_SONG
	db 1, POWER_GEM
	db 55, DESTINY_BOND
	db 60, MYSTICALFIRE
	db 0 ; no more level-up moves


GligarEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 4, MUD_SLAP
	db 7, DEFENSE_CURL
	db 10, THIEF ; Knock off, similar move
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, FAINT_ATTACK
	db 22, AERIAL_ACE ; wing attack, similar move
	db 24, METAL_CLAW
	db 27, SLASH
	db 30, POISON_TAIL ; U-turn, Egg move
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, SWORDS_DANCE
	db 50, POISON_JAB
	db 55, SUPER_FANG
	db 60, SPIKES
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 4, MUD_SLAP
	db 7, DEFENSE_CURL
	db 10, THIEF ; Knock off, similar move
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, FAINT_ATTACK
	db 22, AERIAL_ACE ; wing attack, similar move
	db 24, METAL_CLAW
	db 27, SLASH
	db 30, POISON_TAIL ; U-turn, Egg move
	db 35, SCREECH
	db 40, X_SCISSOR
	db 45, SWORDS_DANCE
	db 50, POISON_JAB
	db 55, SUPER_FANG
	db 60, SPIKES
	db 0 ; no more level-up moves


HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 5, MUD_SLAP ; smokescreen, similar move
	db 9, LEER
	db 13, TWISTER
	db 17, FOCUS_ENERGY
	db 21, BUBBLEBEAM
	db 26, DRAGONBREATH ; Egg move
	db 31, AGILITY
	db 36, RAIN_DANCE
	db 41, DRAGON_PULSE
	db 46, DRAGON_DANCE
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, MUD_SLAP ; smokescreen, similar move
	db 1, LEER
	db 1, TWISTER
	db 1, FOCUS_ENERGY
	db 1, BUBBLEBEAM
	db 1, DRAGONBREATH ; Egg move
	db 1, AGILITY
	db 35, AURORA_BEAM
	db 38, RAIN_DANCE
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, OUTRAGE ; Move relearner
	db 1, WATER_GUN
	db 1, MUD_SLAP ; smokescreen, similar move
	db 1, LEER
	db 1, TWISTER
	db 1, FOCUS_ENERGY
	db 1, BUBBLEBEAM
	db 1, DRAGONBREATH ; Egg move
	db 1, AGILITY
	db 35, AURORA_BEAM
	db 38, RAIN_DANCE
	db 45, DRAGON_PULSE
	db 52, DRAGON_DANCE
	db 60, HYDRO_PUMP
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 28, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, MUD_SLAP
	db 9, POWDER_SNOW
	db 14, HOWL ; new move, mud slap given earlier
	db 18, ICE_SHARD
	db 21, BULLDOZE
	db 24, ENDURE
	db 28, TAKE_DOWN
	db 35, SAFEGUARD ; Mist, Similar move
	db 37, ANCIENTPOWER
	db 40, ICE_BEAM
	db 44, FLAIL
	db 48, EARTHQUAKE
	db 53, ICICLECRASH
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db EVOLVE_LEVEL, 41, MAMOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 1, POWDER_SNOW
	db 1, HOWL ; new move, mud slap given earlier
	db 1, ICE_SHARD
	db 1, BULLDOZE
	db 1, ENDURE
	db 1, TAKE_DOWN
	db 33, FURY_ATTACK
	db 37, SAFEGUARD ; Mist, Similar move
	db 41, ANCIENTPOWER
	db 46, ICE_BEAM
	db 52, FLAIL
	db 58, THRASH
	db 62, EARTHQUAKE
	db 68, ICICLECRASH
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE ; Move relearner
	db 1, SPIKES ; move relearner
	db 1, TACKLE
	db 1, MUD_SLAP
	db 1, POWDER_SNOW
	db 1, HOWL ; new move, mud slap given earlier
	db 1, ICE_SHARD
	db 1, BULLDOZE
	db 1, ENDURE
	db 1, TAKE_DOWN
	db 1, FURY_ATTACK
	db 1, SAFEGUARD ; Mist, Similar move
	db 41, ANCIENTPOWER
	db 44, SCARY_FACE
	db 47, ICE_BEAM
	db 54, FLAIL
	db 60, THRASH
	db 64, EARTHQUAKE
	db 70, ICICLECRASH
	db 0 ; no more level-up moves


YanmaEvosAttacks:
	db EVOLVE_LEVEL, 34, YANMEGA
	db 0 ; no more evolutions
	db 1, ECHOED_VOICE
	db 4, LOCK_ON
	db 8, GUST
	db 12, QUICK_ATTACK
	db 15, PROTECT
	db 20, CONFUSE_RAY ; Supersonic, similar move
	db 24, SWIFT
	db 28, AERIAL_ACE ; Wing attack, Similar move
	db 34, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, SCREECH
	db 49, AIR_SLASH
	db 54, PIN_MISSILE
	db 57, WHIRLWIND
	db 63, BUG_BUZZ
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN ; move relearner
	db 1, ECHOED_VOICE
	db 1, LOCK_ON
	db 1, GUST
	db 1, QUICK_ATTACK
	db 1, PROTECT
	db 1, CONFUSE_RAY
	db 1, SWIFT
	db 1, AERIAL_ACE
	db 1, ANCIENTPOWER
	db 38, DRAGONBREATH
	db 43, HYPNOSIS
	db 49, SCREECH
	db 54, AIR_SLASH
	db 57, PIN_MISSILE
	db 63, WHIRLWIND
	db 70, BUG_BUZZ
	db 75, DRAGON_PULSE
	;db 80, QUIVERDANCE
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db EVOLVE_LEVEL, 45, MAGMORTAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 6, SMOG
	db 11, MUD_SLAP
	db 16, FAINT_ATTACK
	db 21, FIRE_SPIN
	db 26, CONFUSE_RAY
	db 32, FIRE_PUNCH
	db 38, CROSS_CHOP
	db 44, SUNNY_DAY
	db 50, FLAMETHROWER
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 1, EMBER
	db 1, LEER
	db 6, SMOG
	db 1, MUD_SLAP
	db 1, FAINT_ATTACK
	db 1, FIRE_SPIN
	db 1, CONFUSE_RAY
	db 1, FIRE_PUNCH
	db 1, CROSS_CHOP
	db 1, SUNNY_DAY
	db 50, DARK_PULSE
	db 56, FLAMETHROWER
	db 62, FIRE_BLAST
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db EVOLVE_LEVEL, 45, ELECTIVIRE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, THUNDERSHOCK
	db 6, QUICK_ATTACK
	db 11, SWIFT
	db 16, THUNDER_WAVE
	db 21, SCREECH
	db 26, THUNDERPUNCH
	db 32, LOW_SWEEP
	db 38, LIGHT_SCREEN
	db 44, THUNDERBOLT
	db 50, CROSS_CHOP
	db 56, THUNDER
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions	
	db 1, HOWL
	db 1, BARRIER
	db 1, LEER
	db 1, THUNDERSHOCK
	db 1, QUICK_ATTACK
	db 1, SWIFT
	db 16, THUNDER_WAVE
	db 1, SCREECH
	db 1, THUNDERPUNCH
	db 1, LOW_SWEEP
	db 1, LIGHT_SCREEN
	db 1, THUNDERBOLT
	db 50, CROSS_CHOP
	db 58, THUNDER
	db 62, VOLT_TACKLE
	db 0 ; no more level-up moves


HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 4, HOWL
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	db 20, FLAME_WHEEL ; fire fang, similar move
	db 25, BONE_CLUB ; new move
	db 28, COUNTER ; new mve
	db 32, FLAMETHROWER
	db 37, CRUNCH
	db 42, NASTY_PLOT
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, DESTINY_BOND ;move relearner 
	db 1, EMBER
	db 1, LEER
	db 1, HOWL
	db 1, SMOG
	db 1, ROAR
	db 1, BITE
	db 1, FLAME_WHEEL ; fire fang, similar move
	db 27, BONE_CLUB ; new move
	db 31, REVERSAL ; egg move
	db 35, BEAT_UP
	db 41, COUNTER ; new mve
	db 45, FLAMETHROWER
	db 50, CRUNCH
	db 56, NASTY_PLOT
	db 60, FIRE_BLAST
	db 0 ; no more level-up moves


StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 8, WATER_GUN
	db 14, RAPID_SPIN
	db 20, BUBBLEBEAM
	db 26, PSYBEAM
	db 32, RECOVER
	db 38, POWER_GEM
	db 42, CONFUSE_RAY
	db 46, BARRIER
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, DEFENSE_CURL
	db 1, BUBBLEBEAM
	db 1, SWIFT
	db 40, POWER_GEM
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves


ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, ABSORB
	db 6, HYPNOSIS
	db 11, REFLECT
	db 15, LEECH_SEED
	db 18, MEGA_DRAIN
	db 22, STUN_SPORE
	db 25, CONFUSION
	db 31, SLEEP_POWDER
	db 34, MORNING_SUN
	db 40, SEED_BOMB
	db 45, PSYCHIC_M
	db 51, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HYPNOSIS
	db 1, REFLECT
	db 1, LEECH_SEED
	db 1, MEGA_DRAIN
	db 27, STOMP
	db 37, MORNING_SUN
	db 47, SEED_BOMB
	db 57, SOLARBEAM
	db 67, SEED_BOMB
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, SEED_BOMB ; move relearner
	db 1, NIGHT_SLASH ; move relearner
	db 1, LEER
	db 1, TACKLE
	db 6, HORN_ATTACK
	db 10, AERIAL_ACE
	db 15, HEADBUTT
	db 20, COUNTER
	db 23, FURY_ATTACK
	db 27, ROCK_SMASH
	db 31, TAKE_DOWN
	db 34, REVERSAL
	db 40, PIN_MISSILE
	db 43, SWORDS_DANCE
	db 46, CLOSECOMBAT
	db 50, MEGAHORN
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE ; move relearner
	db 1, BRAVE_BIRD ; move relearner
	db 1, PECK
	db 1, LEER
	db 6, MUD_SLAP ; Sandattack Similar move
	db 9, METAL_CLAW
	db 12, AIR_CUTTER
	db 17, FURY_ATTACK
	db 20, SWIFT
	db 23, WHIRLWIND
	db 28, SPIKES
	db 31, AGILITY
	db 34, STEEL_WING
	db 39, SLASH
	db 42, SCREECH
	db 45, AIR_SLASH
	db 50, ENDURE
	db 53, NIGHT_SLASH
	db 58, DRILL_PECK
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LOCK_ON
	db 1, FOCUS_ENERGY
	db 1, MACH_PUNCH
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 1, TACKLE
	db 1, LOCK_ON
	db 1, TAKE_DOWN
	db 6, AGILITY
	db 11, FAINT_ATTACK
	db 16, BULLET_PUNCH
	db 21, MACH_PUNCH 
	db 26, PROTECT
	db 31, DRAIN_PUNCH
	db 36, SHADOW_PUNCH
	db 39, ICE_PUNCH
	db 42, FIRE_PUNCH
	db 46, THUNDERPUNCH
	db 52, COUNTER
	db 56, BEAT_UP
	db 61, CLOSECOMBAT
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, TACKLE
	db 1, LOCK_ON
	db 1, DOUBLE_KICK
	db 6, HOWL
	db 11, FOCUS_ENERGY
	db 16, JUMP_KICK
	db 21, STOMP 
	db 26, PROTECT
	db 31, ROCK_SMASH
	db 36, BLAZE_KICK
	db 39, ICE_PUNCH
	db 42, HI_JUMP_KICK
	db 46, ENDURE
	db 52, REVERSAL
	db 56, BEAT_UP
	db 61, CLOSECOMBAT
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

TreeckoEvosAttacks:
	db EVOLVE_LEVEL, 16, GROVYLE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POUND
	db 5, ABSORB
	db 9, QUICK_ATTACK
	db 13, MEGA_DRAIN
	db 17, BITE
	db 21, GIGA_DRAIN
	db 25, HEADBUTT
	db 29, AGILITY
	db 33, PROTECT
	db 37, ENERGY_BALL
	db 41, CRUNCH
	db 45, SCREECH
	db 49, MORNING_SUN
	db 0 ; no more level-up moves

GrovyleEvosAttacks:
	db EVOLVE_LEVEL, 36, SCEPTILE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POUND
	db 1, ABSORB
	db 1, QUICK_ATTACK
	db 1, MEGA_DRAIN
	db 16, FURY_CUTTER
	db 20, BITE
	db 23, GIGA_DRAIN
	db 29, HEADBUTT
	db 33, LEAF_BLADE
	db 35, AGILITY
	db 41, PROTECT
	db 46, ENERGY_BALL
	db 49, CRUNCH
	db 52, SCREECH
	db 56, MORNING_SUN
	db 61, SEED_FLARE
	db 0 ; no more level-up moves

SceptileEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, DRAGON_DANCE
	db 1, LEER
	db 1, POUND
	db 1, ABSORB
	db 1, QUICK_ATTACK
	db 1, MEGA_DRAIN
	db 1, FURY_CUTTER
	db 1, BITE
	db 1, GIGA_DRAIN
	db 1, HEADBUTT
	db 1, LEAF_BLADE
	db 1, AGILITY
	db 36, DRAGON_SWIPE
	db 39, PROTECT
	db 41, X_SCISSOR
	db 45, ENERGY_BALL
	db 51, CRUNCH
	db 57, SCREECH
	db 63, MORNING_SUN
	db 70, SEED_FLARE
	db 0 ; no more level-up moves

TorchicEvosAttacks:
	db EVOLVE_LEVEL, 16, COMBUSKEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, EMBER
	db 10, MUD_SLAP 
	db 14, PECK
	db 19, FIRE_SPIN
	db 23, QUICK_ATTACK
	db 28, FLAME_WHEEL
	db 32, FOCUS_ENERGY
	db 37, CRUSH_CLAW ; slash, egg move
	db 41, DRILL_PECK ; mirror move, new move
	db 46, FLAMETHROWER
	db 0 ; no more level-up moves

CombuskenEvosAttacks:
	db EVOLVE_LEVEL, 36, BLAZIKEN
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, GROWL
	db 1, TACKLE
	db 1, EMBER
	db 1, MUD_SLAP 
	db 1, PECK
	db 16, DOUBLE_KICK
	db 20, FIRE_SPIN
	db 25, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 36, BULK_UP		
	db 42, CRUSH_CLAW ; slash, egg move
	db 47, DRILL_PECK ; mirror move, new move
	db 53, FLAMETHROWER
	db 58, HI_JUMP_KICK
	db 64, FLARE_BLITZ
	db 0 ; no more level-up moves

BlazikenEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, BRAVE_BIRD
	db 1, FOCUS_ENERGY
	db 1, GROWL
	db 1, TACKLE
	db 1, EMBER
	db 1, MUD_SLAP 
	db 1, PECK
	db 1, DOUBLE_KICK
	db 1, FIRE_SPIN
	db 1, QUICK_ATTACK
	db 1, FLAME_WHEEL
	db 1, BULK_UP	
	db 36, BLAZE_KICK	
	db 44, CRUSH_CLAW ; slash, egg move
	db 50, DRILL_PECK ; mirror move, new move
	db 57, FLAMETHROWER
	db 63, HI_JUMP_KICK
	db 70, FLARE_BLITZ
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	db EVOLVE_LEVEL, 16, MARSHTOMP
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, WATER_GUN
	db 9, MUD_SLAP 
	db 12, ROCK_THROW
	db 17, BIDE
	db 20, LOCK_ON
	db 25, ROCK_TOMB
	db 28, PROTECT
	db 33, BUBBLEBEAM
	db 36, TAKE_DOWN
	db 41, HYDRO_PUMP 
	db 44, MIRROR_COAT
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	db EVOLVE_LEVEL, 36, SWAMPERT
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, WATER_GUN
	db 1, MUD_SLAP 
	db 1, ROCK_THROW
	db 16, MUD_SHOT
	db 18, BIDE
	db 22, LOCK_ON
	db 28, ROCK_TOMB
	db 32, PROTECT
	db 38, BUBBLEBEAM
	db 42, TAKE_DOWN
	db 48, HYDRO_PUMP 
	db 52, MIRROR_COAT
	db 0 ; no more level-up moves

SwampertEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, SPIKES
	db 1, GROWL
	db 1, TACKLE
	db 1, WATER_GUN
	db 1, MUD_SLAP 
	db 1, ROCK_THROW
	db 1, MUD_SHOT
	db 1, BIDE
	db 1, LOCK_ON
	db 1, ROCK_TOMB
	db 1, PROTECT
	db 36, SCALD
	db 39, EARTHQUAKE
	db 44, TAKE_DOWN
	db 51, HYDRO_PUMP 
	db 56, MIRROR_COAT
	db 63, HAZE
	db 70, HEAD_SMASH
	db 0 ; no more level-up moves


AronEvosAttacks:
	db EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 8, MUD_SLAP
	db 11, HEADBUTT
	db 15, METAL_CLAW
	db 18, BARRIER
	db 22, ROAR
	db 25, TAKE_DOWN
	db 29, MIRROR_SHOT
	db 32, PROTECT
	db 36, SCREECH
	db 40, IRON_HEAD
	db 44, ROCK_SLIDE
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	db EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, MUD_SLAP
	db 1, HEADBUTT
	db 1, METAL_CLAW
	db 1, BARRIER
	db 1, ROAR
	db 1, TAKE_DOWN
	db 1, MIRROR_SHOT
	db 1, PROTECT
	db 38, SCREECH
	db 42, IRON_HEAD
	db 46, ROCK_SLIDE
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKES ;AquaTail
	db 1, CLOSECOMBAT
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, MUD_SLAP
	db 1, HEADBUTT
	db 1, METAL_CLAW
	db 1, BARRIER
	db 1, ROAR
	db 1, TAKE_DOWN
	db 1, MIRROR_SHOT
	db 1, PROTECT
	db 1, SCREECH
	db 1, IRON_HEAD
	db 48, ROCK_SLIDE
	db 52, DOUBLE_EDGE
	db 58, STONE_EDGE
	db 63, METEOR_MASH
	db 70, HEAD_SMASH
	db 0 ; no more level-up moves


NumelEvosAttacks:
	db EVOLVE_LEVEL, 33, CAMERUPT
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, EMBER
	db 8, FOCUS_ENERGY
	db 12, MAGNITUDE
	db 15, AMNESIA
	db 19, FLAME_WHEEL
	db 22, HEADBUTT
	db 26, EARTH_POWER
	db 29, CURSE
	db 31, TAKE_DOWN
	db 36, SING ; Yawn Similar Move
	db 40, FLAMETHROWER
	db 44, DOUBLE_EDGE
	db 47, EARTHQUAKE
	db 0 ; no more level-up moves

CameruptEvosAttacks:
	db 0 ; no more evolutions
	db 1, IRON_HEAD
	db 1, GROWL
	db 1, TACKLE
	db 1, EMBER
	db 1, FOCUS_ENERGY
	db 1, MAGNITUDE
	db 1, AMNESIA
	db 1, FLAME_WHEEL
	db 1, HEADBUTT
	db 1, EARTH_POWER
	db 1, CURSE
	db 1, TAKE_DOWN
	db 33, ROCK_SLIDE
	db 39, SING ; Yawn Similar Move
	db 46, FLAMETHROWER
	db 52, DOUBLE_EDGE
	db 59, EARTHQUAKE
	db 0 ; no more level-up moves

RoseliaEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, ROSERADE
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 7, POISON_STING
	db 10, STUN_SPORE
	db 13, MEGA_DRAIN
	db 16, LEECH_SEED
	db 19, MAGICAL_LEAF
	db 22, SING
	db 25, GIGA_DRAIN
	db 28, SLUDGE
	db 31, SPIKES
	db 34, SEED_BOMB
	db 37, PETAL_DANCE
	db 40, SUNNY_DAY
	db 43, HEAL_BELL
	db 46, MORNING_SUN
	db 50, TWINEEDLE
	db 0 ; no more level-up moves

RoseradeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUG_BUZZ
	db 1, GROWTH
	db 1, STUN_SPORE
	db 1, LEECH_SEED
	db 1, SING
	db 1, GIGA_DRAIN
	db 1, SLUDGE
	db 1, SPIKES
	db 1, SEED_BOMB
	db 1, PETAL_DANCE
	db 1, SUNNY_DAY
	db 40, HEAL_BELL
	db 50, MORNING_SUN
	db 60, TWINEEDLE
	db 70, SOLARBEAM
	db 0 ; no more level-up moves


CarvanhaEvosAttacks:
	db EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 6, RAGE
	db 8, FOCUS_ENERGY
	db 11, AQUA_JET
	db 15, FAINT_ATTACK
	db 18, SCREECH
	db 22, SWAGGER
	db 25, BUBBLEBEAM
	db 29, SCARY_FACE
	db 32, POISON_TAIL
	db 36, CRUNCH
	db 39, AGILITY
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB ; move relearner
	db 1, OUTRAGE ; move relearner
	db 1, BITE
	db 1, LEER
	db 1, RAGE
	db 1, FOCUS_ENERGY
	db 1, AQUA_JET
	db 1, FAINT_ATTACK
	db 1, SCREECH
	db 1, SWAGGER
	db 1, BUBBLEBEAM
	db 1, SCARY_FACE
	db 30, SLASH
	db 34, POISON_TAIL
	db 40, CRUNCH
	db 45, AGILITY
	db 51, DOUBLE_EDGE
	db 56, SUPER_FANG
	db 62, HYDRO_PUMP
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	db EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, SING
	db 8, FAIRY_WIND
	db 12, TWISTER
	db 17, RAGE
	db 22, TAKE_DOWN
	db 25, SAFEGUARD
	db 30, FURY_ATTACK
	db 33, ENCORE
	db 38, AIR_SLASH
	db 42, PERISH_SONG
	db 46, MOONBLAST
	db 50, DRILL_PECK
	db 54, DRAGON_PULSE
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEAN_LOOK
	db 1, WHIRLWIND
	db 1, GROWL
	db 1, PECK
	db 1, FAIRY_WIND
	db 1, TWISTER
	db 1, SING
	db 1, FURY_ATTACK
	db 1, SAFEGUARD
	db 1, TAKE_DOWN
	db 1, ENCORE
	db 35, DRAGONBREATH
	db 40, AIR_SLASH
	db 45, PERISH_SONG
	db 50, DRAGON_DANCE
	db 55, MOONBLAST
	db 60, DRILL_PECK
	db 65, DRAGON_PULSE
	db 0 ; no more level-up moves

ShuppetEvosAttacks:
	db EVOLVE_LEVEL, 37, BANETTE
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, THIEF
	db 7, NIGHT_SHADE
	db 10, LICK
	db 13, HEADBUTT
	db 16, WILL_O_WISP
	db 19, FAINT_ATTACK
	db 22, HEX
	db 26, CURSE
	db 30, SHADOW_BALL
	db 34, NIGHT_SLASH
	db 38, DESTINY_BOND
	db 42, PHANTOMFORCE
	db 46, GUNK_SHOT
	db 0 ; no more level-up moves

BanetteEvosAttacks:
	db 0 ; no more evolutions
	db 1, MYSTICALFIRE
	db 1, SCREECH
	db 1, THIEF
	db 1, NIGHT_SHADE
	db 1, LICK
	db 1, HEADBUTT
	db 1, WILL_O_WISP
	db 1, FAINT_ATTACK
	db 1, HEX
	db 1, CURSE
	db 1, SHADOW_BALL
	db 1, NIGHT_SLASH
	db 37, SHADOW_CLAW
	db 42, POISON_JAB
	db 46, DESTINY_BOND
	db 50, PHANTOMFORCE
	db 55, GUNK_SHOT
	db 0 ; no more level-up moves


CuboneEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, KANGASKHAN
	db EVOLVE_ITEM, MOON_STONE, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POUND
	db 4, MUD_SLAP
	db 8, LEER
	db 12, HEADBUTT
	db 16, FOCUS_ENERGY
	db 20, BONE_CLUB
	db 24, FALSE_SWIPE
	db 29, TAKE_DOWN
	db 32, FURY_ATTACK
	db 36, THRASH
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POUND
	db 1, BONE_CLUB
	db 1, LEER
	db 12, HEADBUTT
	db 16, FOCUS_ENERGY
	db 19, BITE 
	db 22, BULLDOZE
	db 25, TAKE_DOWN
	db 31, DRAIN_PUNCH
	db 34, CRUSH_CLAW
	db 37, CRUNCH
	db 43, ENDURE
	db 46, FLAIL
	db 49, DOUBLE_EDGE
	db 55, CLOSECOMBAT
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, BONE_CLUB
	db 1, HEADBUTT
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 15, RAGE
	db 20, SHADOW_PUNCH
	db 25, FLAME_WHEEL
	db 30, WILL_O_WISP
	db 35, BONEMERANG
	db 40, SHADOW_CLAW
	db 45, FLARE_BLITZ
	db 50, PAIN_SPLIT
	db 55, PHANTOMFORCE
	db 60, OUTRAGE
	db 0 ; no more level-up moves

GlameowEvosAttacks:
	db EVOLVE_LEVEL, 38, PURUGLY
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, QUICK_ATTACK
	db 13, HYPNOSIS
	db 17, FAINT_ATTACK
	db 20, CHARM
	db 25, STOMP
	db 29, CAPTIVATE
	db 32, SLASH
	db 37, FURY_ATTACK
	db 44, ATTRACT
	db 48, HOWL
	db 50, PLAYROUGH
	db 0 ; no more level-up moves

PuruglyEvosAttacks:
	db 0 ; no more evolutions
	db 1, PAY_DAY
	db 1, GROWL
	db 1, TACKLE
	db 1, QUICK_ATTACK
	db 1, HYPNOSIS
	db 1, FAINT_ATTACK
	db 1, CHARM
	db 1, STOMP
	db 1, CAPTIVATE
	db 1, SLASH
	db 1, FURY_ATTACK
	db 44, BODY_SLAM
	db 50, ATTRACT
	db 56, HOWL
	db 62, PLAYROUGH
	db 66, BEAT_UP
	db 0 ; no more level-up moves

TropiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, LEER
	db 6, GROWTH
	db 10, STOMP
	db 16, MAGICAL_LEAF
	db 21, WHIRLWIND
	db 26, SEED_BOMB
	db 30, DRAGON_DANCE
	db 36, AIR_SLASH
	db 41, DRAGON_SWIPE
	db 46, BODY_SLAM
	db 50, MORNING_SUN
	db 56, SOLARBEAM
	db 61, LEECH_SEED
	db 0 ; no more level-up moves

TorkoalEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, SMOG
	db 9, DEFENSE_CURL
	db 13, RAPID_SPIN
	db 17, MUD_SLAP
	db 21, FLAME_WHEEL
	db 25, PROTECT
	db 28, BODY_SLAM
	db 31, BARRIER
	db 36, FLAMETHROWER
	db 39, CURSE
	db 41, AMNESIA
	db 45, WILL_O_WISP
	db 49, SLUDGE_BOMB
	db 53, REVERSAL
	db 60, FLARE_BLITZ
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, WATER_GUN
	db 8, CONFUSE_RAY
	db 12, SING
	db 16, ICE_SHARD
	db 20, BUBBLEBEAM
	db 24, BODY_SLAM
	db 29, SAFEGUARD
	db 34, RAIN_DANCE
	db 39, ICE_BEAM
	db 44, HYDRO_PUMP
	db 49, ICICLECRASH
	db 54, HAIL
	db 59, PERISH_SONG
	db 64, MEAN_LOOK
	db 69, HAZE
	db 74, BLIZZARD
	db 0 ; no more level-up moves


RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 9, STOMP
	db 13, FURY_ATTACK
	db 21, FOCUS_ENERGY
	db 25, ROCK_THROW
	db 30, HORN_ATTACK
	db 35, MAGNITUDE
	db 41, TAKE_DOWN
	db 45, STONE_EDGE
	db 51, DRILL_PECK
	db 55, EARTHQUAKE
	db 61, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, PECK
	db 1, LEER
	db 1, STOMP
	db 1, FURY_ATTACK
	db 1, FOCUS_ENERGY
	db 1, ROCK_THROW
	db 1, HORN_ATTACK
	db 1, MAGNITUDE
	db 1, TAKE_DOWN
	db 48, STONE_EDGE
	db 53, DRILL_PECK
	db 58, EARTHQUAKE
	db 63, MEGAHORN
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, WATER_GUN
	db 10, ICE_SHARD
	db 14, BARRIER
	db 19, LEER
	db 22, AURORA_BEAM
	db 26, CONFUSE_RAY
	db 30, PROTECT
	db 33, BUBBLEBEAM
	db 37, SCREECH
	db 41, ICE_BEAM
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, WATER_GUN
	db 1, ICE_SHARD
	db 1, BARRIER
	db 1, LEER
	db 1, AURORA_BEAM
	db 1, CONFUSE_RAY
	db 1, PROTECT
	db 33, BUBBLEBEAM
	db 47, SCREECH	
	db 41, ICE_BEAM
	db 45, HYDRO_PUMP
	db 50, SPIKES
	db 55, TRI_ATTACK
	db 60, EXPLOSION
	db 65, TWINEEDLE
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
	db EVOLVE_LEVEL, 42, GLALIE
	db EVOLVE_ITEM, MOON_STONE, FROSLASS
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POWDER_SNOW
	db 5, HOWL
	db 10, ICE_SHARD
	db 14, HEADBUTT
	db 19, BITE
	db 23, AURORA_BEAM
	db 28, SPIKES
	db 32, PROTECT
	db 37, HAIL
	db 41, CRUNCH
	db 46, BLIZZARD
	db 50, ICICLECRASH
	db 0 ; no more level-up moves

GlalieEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXPLOSION
	db 1, LEER
	db 1, POWDER_SNOW
	db 1, HOWL
	db 1, ICE_SHARD
	db 1, HEADBUTT
	db 1, BITE
	db 1, AURORA_BEAM
	db 1, SPIKES
	db 1, PROTECT
	db 1, HAIL
	db 41, CRUNCH
	db 48, SUPER_FANG
	db 54, BLIZZARD
	db 61, ICICLECRASH
	db 0 ; no more level-up moves

FroslassEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POWDER_SNOW
	db 1, HOWL
	db 1, ICE_SHARD
	db 14, LICK
	db 19, CONFUSE_RAY
	db 23, AURORA_BEAM
	db 28, SPIKES
	db 32, CAPTIVATE
	db 37, HEX
	db 41, HAIL
	db 46, BLIZZARD
	db 50, PAIN_SPLIT
	db 59, DESTINY_BOND
	db 0 ; no more level-up moves


PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, LEER
	db 12, EMBER
	db 16, STOMP
	db 20, DOUBLE_KICK
	db 25, FLAME_WHEEL
	db 29, TAKE_DOWN
	db 33, FIRE_SPIN
	db 37, AGILITY
	db 41, LOW_SWEEP
	db 45, FIRE_BLAST
	db 52, DOUBLE_EDGE
	db 56, FLARE_BLITZ
	db 61, MORNING_SUN
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, WILD_CHARGE
	db 1, HYPNOSIS
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER
	db 1, EMBER
	db 1, STOMP
	db 1, DOUBLE_KICK
	db 1, FLAME_WHEEL
	db 1, TAKE_DOWN
	db 1, FIRE_SPIN
	db 1, AGILITY
	db 43, LOW_SWEEP
	db 47, FIRE_BLAST
	db 54, DOUBLE_EDGE
	db 58, FLARE_BLITZ
	db 63, MORNING_SUN
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 6, LICK
	db 9, MUD_SLAP
	db 13, STOMP
	db 17, HYPNOSIS
	db 20, CONFUSE_RAY
	db 23, DOUBLE_KICK
	db 26, TAKE_DOWN
	db 30, PSYBEAM
	db 34, JUMP_KICK
	db 38, HYPER_VOICE
	db 42, CALM_MIND
	db 48, MUD_SHOT
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCREECH
	db 15, FAINT_ATTACK
	db 19, REST
	db 24, TAKE_DOWN
	db 29, ZENHEADBUTT
	db 35, SWAGGER
	db 41, FURY_ATTACK
	db 48, THRASH
	db 55, IRON_HEAD
	db 60, DOUBLE_EDGE
	db 70, MEGAHORN
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 6, DEFENSE_CURL
	db 10, STOMP
	db 14, RECOVER
	db 16, BIDE
	db 20, ROLLOUT
	db 24, BODY_SLAM
	db 29, ZENHEADBUTT
	db 35, CLOSECOMBAT
	db 41, HEAL_BELL
	db 48, CURSE
	db 55, DOUBLE_EDGE
	db 60, PLAYROUGH 
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 10, AMNESIA
	db 15, BELLY_DRUM
	db 19, REST
	db 24, HEADBUTT
	db 28, SLEEP_TALK
	db 33, ROLLOUT
	db 37, BODY_SLAM
	db 42, CURSE
	db 47, CRUNCH
	db 52, DOUBLE_EDGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, DEFENSE_CURL
	db 1, POUND
	db 5, FAIRY_WIND
	db 10, DRAININGKISS
	db 14, SING
	db 19, SOFTBOILED
	db 23, TAKE_DOWN
	db 29, LIGHT_SCREEN
	db 33, HYPER_VOICE
	db 41, DOUBLE_EDGE
	db 51, HEAL_BELL
	db 60, LOVELY_KISS
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, DEFENSE_CURL
	db 1, POUND
	db 5, FAIRY_WIND
	db 10, DRAININGKISS
	db 14, SING
	db 19, SOFTBOILED
	db 23, TAKE_DOWN
	db 29, LIGHT_SCREEN
	db 33, HYPER_VOICE
	db 41, DOUBLE_EDGE
	db 51, HEAL_BELL
	db 60, LOVELY_KISS
	db 0 ; no more level-up moves

RioluEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, LUCARIO
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 5, LEER
	db 9, METAL_CLAW
	db 14, COUNTER
	db 18, HOWL
	db 24, FORCE_PALM
	db 26, SCREECH
	db 30, BONE_CLUB
	db 36, NASTY_PLOT
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, METAL_CLAW
	db 1, BONE_CLUB
	db 14, COUNTER
	db 18, HOWL
	db 24, FORCE_PALM
	db 26, SCREECH
	db 30, AURA_SPHERE
	db 36, NASTY_PLOT
	db 40, BONEMERANG
	db 44, SWORDS_DANCE
	db 49, DRAGON_PULSE
	db 55, DARK_PULSE
	db 60, EXTREMESPEED
	db 65, CROSS_CHOP
	db 70, METEOR_MASH
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	db EVOLVE_LEVEL, 22, MASQUERAIN
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 7, QUICK_ATTACK
	db 13, STRING_SHOT
	db 19, SWIFT
	db 25, BUBBLEBEAM
	db 31, AGILITY
	db 37, AQUA_JET
	db 43, BATON_PASS
	db 50, HAZE
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0 ; no more evolutions
	;db 1, QuiverDance 
	db 1, WATER_GUN
	db 7, QUICK_ATTACK
	db 13, STRING_SHOT
	db 19, SWIFT
	db 22, AIR_CUTTER
	db 27, BUBBLEBEAM
	db 30, FAIRY_WIND
	db 34, AGILITY
	db 39, AQUA_JET
	db 43, BATON_PASS
	db 47, WHIRLWIND
	db 51, RAIN_DANCE
	db 55, HAZE
	db 60, BUG_BUZZ
	db 65, HYDRO_PUMP
	db 70, HURRICANE
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	db EVOLVE_LEVEL, 36, CLAYDOL
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, MUD_SLAP
	db 5, RAPID_SPIN
	db 8, CONFUSION
	db 11, ROCK_TOMB
	db 15, AMNESIA
	db 18, PSYBEAM
	db 22, BARRIER
	db 26, ANCIENTPOWER
	db 28, SELFDESTRUCT
	db 31, SANDSTORM
	db 35, PSYCHIC_M
	db 40, EARTH_POWER
	db 43, SPIKES
	db 47, SAFEGUARD
	db 51, EXPLOSION
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, MUD_SLAP
	db 1, RAPID_SPIN
	db 1, CONFUSION
	db 1, ROCK_TOMB
	db 1, AMNESIA
	db 1, PSYBEAM
	db 1, BARRIER
	db 1, ANCIENTPOWER
	db 1, SELFDESTRUCT
	db 1, SANDSTORM
	db 1, PSYCHIC_M
	db 41, EARTH_POWER
	db 45, SPIKES
	db 50, SAFEGUARD
	db 55, EXPLOSION
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 8, PECK
	db 14, FURY_CUTTER
	db 20, HOWL
	db 24, AERIAL_ACE
	db 28, FOCUS_ENERGY
	db 31, SLASH
	db 35, AGILITY
	db 40, SWORDS_DANCE
	db 43, NIGHT_SLASH
	db 47, RECOVER
	db 53, X_SCISSOR
	db 60, DRILL_PECK
	db 65, LEAF_BLADE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, PECK
	db 1, AERIAL_ACE
	db 1, BULLET_PUNCH
	db 1, AGILITY
	db 1, DRILL_PECK
	db 28, METAL_CLAW
	db 31, SLASH
	db 35, AGILITY
	db 40, SWORDS_DANCE
	db 43, STEEL_WING
	db 47, RECOVER
	db 51, NIGHT_SLASH
	db 58, X_SCISSOR
	db 66, IRON_HEAD
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, GROWL
	db 10, WATER_GUN
	db 14, CONFUSION
	db 18, HEADBUTT
	db 23, BUBBLEBEAM
	db 27, AMNESIA
	db 31, RECOVER
	db 35, PSYCHIC_M
	db 38, CALM_MIND
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 1, CONFUSION
	db 1, HEADBUTT
	db 1, BUBBLEBEAM
	db 1, AMNESIA
	db 1, RECOVER
	db 1, PSYCHIC_M
	db 38, BARRIER
	db 42, CALM_MIND
	db 46, HYDRO_PUMP
	db 50, RAIN_DANCE
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 1, CONFUSION
	db 1, HEADBUTT
	db 1, BUBBLEBEAM
	db 1, AMNESIA
	db 1, RECOVER
	db 1, PSYCHIC_M
	db 38, BARRIER
	db 42, BELLY_DRUM
	db 46, ZENHEADBUTT
	db 50, RAIN_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, POUND
	db 8, POWDER_SNOW
	db 12, CONFUSE_RAY
	db 16, CONFUSION
	db 21, SING
	db 26, ICE_PUNCH
	db 30, ENCORE
	db 34, PSYBEAM
	db 38, LOVELY_KISS
	db 41, MEAN_LOOK
	db 45, PERISH_SONG
	db 50, PSYCHIC_M
	db 55, BLIZZARD
	db 62, NASTY_PLOT
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 7, QUICK_ATTACK
	db 10, BITE ; Pursuit
	db 13, ENCORE ; Taunt, Similar move
	db 16, FAINT_ATTACK
	db 19, FOCUS_ENERGY ; double team, new move
	db 22, SLASH
	db 25, SWORDS_DANCE
	db 29, NIGHT_SLASH
	db 33, PROTECT
	db 37, ZENHEADBUTT ; Psycho cut, egg move
	db 41, MEAN_LOOK ; Me first, egg move
	db 45, BEAT_UP ; Sucker punch, new move
	db 49, BATON_PASS ;Razor wind, egg move
	db 53, FUTURE_SIGHT
	db 57, PERISH_SONG
	db 61, MEGAHORN
	db 0 ; no more level up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, TACKLE 
	db 1, GROWL 
	db 5, HYPNOSIS
	db 9, PECK 
	db 13, LOCK_ON
	db 17, REFLECT
	db 21, CONFUSION
	db 25, AIR_CUTTER
	db 29, HEX
	db 33, HYPER_VOICE
	db 37, NIGHT_SHADE
	db 41, RECOVER
	db 45, PSYCHIC_M
	db 49, AIR_SLASH
	db 53, WHIRLWIND
	db 57, DREAM_EATER
	db 0 ; no more level ups move

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, TACKLE 
	db 1, GROWL 
	db 1, HYPNOSIS
	db 1, PECK 
	db 1, LOCK_ON
	db 1, REFLECT
	db 22, CONFUSION
	db 27, AIR_CUTTER
	db 32, HEX
	db 37, HYPER_VOICE
	db 42, NIGHT_SHADE
	db 47, RECOVER
	db 52, PSYCHIC_M
	db 57, AIR_SLASH
	db 62, WHIRLWIND
	db 67, DREAM_EATER
	db 0 ; no more level ups move

SableyeEvosAttakcs:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POUND
	db 4, LOCK_ON
	db 6, NIGHT_SHADE
	db 9, LICK 
	db 11, PROTECT
	db 16, HEADBUTT
	db 20, RECOVER
	db 23, FAINT_ATTACK
	db 27, HEX
	db 30, SWAGGER
	db 33, CAPTIVATE
	db 37, ZENHEADBUTT
	db 41, POWER_GEM
	db 44, TELEPORT
	db 46, NASTY_PLOT
	db 51, MEAN_LOOK
	db 56, PAIN_SPLIT
	db 61, PHANTOMFORCE


EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, SUN_STONE, ESPEON
	db EVOLVE_ITEM, MOON_STONE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEER
	db 8, MUD_SLAP
	db 11, MUD_SLAP
	db 15, QUICK_ATTACK
	db 22, DOUBLE_KICK
	db 25, MUD_SHOT
	db 29, BITE
	db 33, CHARM
	db 36, BATON_PASS
	db 43, TAKE_DOWN
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 5, MUD_SLAP
	db 10, QUICK_ATTACK
	db 15, WATER_GUN
	db 20, AURORA_BEAM
	db 25, RAIN_DANCE
	db 30, BUBBLEBEAM
	db 35, HAZE
	db 40, BARRIER
	db 45, ICE_BEAM
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 5, MUD_SLAP
	db 10, QUICK_ATTACK
	db 15, THUNDERSHOCK
	db 20, DOUBLE_KICK
	db 25, AGILITY
	db 30, THUNDER_WAVE
	db 35, THUNDERBOLT
	db 40, JUMP_KICK
	db 45, TWINEEDLE
	db 50, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 5, MUD_SLAP
	db 10, QUICK_ATTACK
	db 15, EMBER
	db 20, HOWL
	db 25, BITE
	db 30, FLAME_WHEEL
	db 35, SWAGGER
	db 40, WILD_CHARGE
	db 45, CRUNCH
	db 50, FLARE_BLITZ
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 5, MUD_SLAP
	db 10, QUICK_ATTACK
	db 15, CONFUSION
	db 20, SWIFT
	db 25, SUNNY_DAY
	db 30, PSYBEAM
	db 35, MORNING_SUN
	db 40, CALM_MIND
	db 45, PSYCHIC_M
	db 50, HEAT_WAVE
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 5, MUD_SLAP
	db 10, QUICK_ATTACK
	db 15, CONFUSE_RAY
	db 20, THIEF
	db 25, MEAN_LOOK
	db 30, FAINT_ATTACK
	db 35, CURSE
	db 40, PAIN_SPLIT
	db 45, MOONBLAST
	db 50, DARK_PULSE
	db 0 ; no more level-up moves


ShellosEvosAttacks:
	db EVOLVE_LEVEL, 30, GASTRODON
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 5, DEFENSE_CURL
	db 8, WATER_GUN
	db 13, MUD_SHOT
	db 18, HIDDEN_POWER
	db 22, RAIN_DANCE
	db 26, BODY_SLAM
	db 31, RAIN_DANCE
	db 40, EARTH_POWER
	db 0 ; no more level-up moves

GastrodonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SANDSTORM
	db 1, CURSE
	db 1, MUD_SLAP
	db 1, DEFENSE_CURL
	db 1, WATER_GUN
	db 1, MUD_SHOT
	db 1, HIDDEN_POWER
	db 1, RAIN_DANCE
	db 1, BODY_SLAM
	db 30, ANCIENTPOWER
	db 35, BUBBLEBEAM
	db 40, RAIN_DANCE
	db 46, EARTH_POWER
	db 50, BARRIER
	db 55, MIRROR_COAT
	db 60, COUNTER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, SHOCK_WAVE
	db 29, SIGNAL_BEAM
	db 34, BARRIER
	db 40, THUNDERBOLT
	db 45, TRI_ATTACK
	db 51, MIRROR_COAT
	db 55, COUNTER
	db 60, LOCK_ON
	db 65, ZAP_CANNON
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, ZENHEADBUTT
	db 1, TACKLE
	db 1, CONVERSION
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, SHOCK_WAVE
	db 29, SIGNAL_BEAM
	db 34, BARRIER
	db 40, THUNDERBOLT
	db 45, TRI_ATTACK
	db 51, MIRROR_COAT
	db 55, COUNTER
	db 60, LOCK_ON
	db 65, ZAP_CANNON
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, BITE
	db 1, CONFUSE_RAY
	db 9, AERIAL_ACE
	db 17, SCREECH
	db 25, ROCK_SLIDE
	db 33, WHIRLWIND
	db 41, CRUNCH
	db 49, IRON_HEAD
	db 57, TAKE_DOWN
	db 65, AGILITY
	db 73, STONE_EDGE
	db 81, RECOVER
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 6, ABSORB
	db 11, MUD_SLAP
	db 16, LEER
	db 21, AQUA_JET
	db 27, MUD_SHOT
	db 31, BUBBLEBEAM
	db 34, ANCIENTPOWER
	db 38, PROTECT
	db 41, LEECH_LIFE
	db 47, STONE_EDGE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ABSORB
	db 1, MUD_SLAP
	db 1, LEER
	db 1, AQUA_JET
	db 1, MUD_SHOT
	db 1, BUBBLEBEAM
	db 1, ANCIENTPOWER
	db 1, PROTECT
	db 40, SLASH
	db 44, LEECH_LIFE
	db 49, STONE_EDGE
	db 54, AGILITY
	db 60, SWORDS_DANCE
	db 0 ; no more level-up moves

LileepEvosAttacks:
	db EVOLVE_LEVEL, 40, CRADILY
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, ACID
	db 6, ABSORB
	db 10, CONFUSE_RAY
	db 14, ANCIENTPOWER
	db 19, AMNESIA
	db 22, MEGA_DRAIN
	db 26, BARRIER
	db 30, LEECH_SEED
	db 34, SPIKES
	db 38, ENERGY_BALL
	db 41, ROCK_SLIDE
	db 47, SUNNY_DAY
	db 51, SOLARBEAM
	db 0 ; no more level-up moves

CradilyEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, WRAP
	db 1, ACID
	db 1, ABSORB
	db 1, CONFUSE_RAY
	db 1, ANCIENTPOWER
	db 1, AMNESIA
	db 1, MEGA_DRAIN
	db 1, BARRIER
	db 1, LEECH_SEED
	db 1, SPIKES
	db 1, ENERGY_BALL
	db 41, ROCK_SLIDE
	db 47, SANDSTORM
	db 51, LEAF_BLADE
	db 56, EARTH_POWER
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, TWISTER
	db 10, THUNDER_WAVE
	db 15, AGILITY
	db 20, DRAGONBREATH
	db 25, FLAIL
	db 30, AQUA_JET
	db 35, SAFEGUARD
	db 40, HAZE
	db 45, DRAGON_DANCE
	db 50, OUTRAGE
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, TWISTER
	db 1, THUNDER_WAVE
	db 1, AGILITY
	db 1, DRAGONBREATH
	db 1, FLAIL
	db 1, AQUA_JET
	db 37, HORN_ATTACK
	db 42, SAFEGUARD
	db 47, HAZE
	db 52, SWORDS_DANCE ; DRAGON DANCE
	db 57, OUTRAGE
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, HURRICANE
	db 1, WRAP
	db 1, LEER
	db 1, TWISTER
	db 1, THUNDER_WAVE
	db 1, AGILITY
	db 1, DRAGONBREATH
	db 1, FLAIL
	db 1, AQUA_JET
	db 1, HORN_ATTACK
	db 1, SAFEGUARD
	db 1, HAZE
	db 1, DRAGON_DANCE
	db 55, AERIAL_ACE
	db 60, OUTRAGE
	db 65, HEAT_WAVE
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POUND
	db 8, ROCK_TOMB
	db 12, THIEF
	db 16, DEFENSE_CURL
	db 20, ROLLOUT
	db 24, BITE
	db 28, SCREECH
	db 32, ROCK_THROW
	db 36, BODY_SLAM
	db 40, AGILITY
	db 44, CRUNCH
	db 48, ROCK_SLIDE
	db 52, EARTHQUAKE
	db 56, STONE_EDGE
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POUND
	db 1, ROCK_TOMB
	db 1, THIEF
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 1, BITE
	db 1, SCREECH
	db 1, ROCK_THROW
	db 36, BARRIER
	db 40, BODY_SLAM
	db 44, AGILITY
	db 48, CRUNCH
	db 52, ROCK_SLIDE
	db 56, EARTHQUAKE
	db 60, STONE_EDGE
	db 0 ; no more level-up moves

TyranitarEvosAttacks: 
	db 0 ; no more evolutions
	db 1, CROSS_CHOP
	db 1, ICICLECRASH
	db 1, LEER
	db 1, POUND
	db 1, ROCK_TOMB
	db 1, THIEF
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 1, BITE
	db 1, SCREECH
	db 1, ROCK_THROW
	db 1, BARRIER
	db 1, BODY_SLAM
	db 1, AGILITY
	db 1, CRUNCH
	db 1, ROCK_SLIDE
	db 55, SANDSTORM
	db 60, EARTHQUAKE
	db 65, STONE_EDGE
	db 70, DRAGON_DANCE 
	db 75, OUTRAGE
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	db EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 0 ; no more level-up moves

MetangEvosAttacks:
	db EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 20, CONFUSION
	db 25, METAL_CLAW
	db 30, SCREECH
	db 35, ZENHEADBUTT
	db 40, BARRIER
	db 45, PSYCHIC_M
	db 50, AGILITY
	db 55, IRON_HEAD
	db 60, EXPLOSION
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, BULLET_PUNCH
	db 1, CALM_MIND
	db 1, TAKE_DOWN
	db 1, CONFUSION
	db 1, METAL_CLAW
	db 1, SCREECH
	db 1, ZENHEADBUTT
	db 1, BARRIER
	db 1, PSYCHIC_M
	db 52, AGILITY
	db 57, IRON_HEAD
	db 62, EXPLOSION
	db 0 ; no more level-up moves

GibleEvosAttacks:
	db EVOLVE_LEVEL, 24, GABITE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, MUD_SLAP
	db 12, BITE
	db 18, MAGNITUDE
	db 24, DRAGONBREATH
	db 30, SLASH
	db 36, DIG
	db 42, DRAGON_CLAW
	db 48, SANDSTORM
	db 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

GabiteEvosAttacks:
	db EVOLVE_LEVEL, 48, GARCHOMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 1, BITE
	db 1, MAGNITUDE
	db 1, DRAGONBREATH
	db 28, ROCK_THROW
	db 34, SLASH
	db 38, DIG
	db 44, DRAGON_CLAW
	db 50, SANDSTORM
	db 56, DOUBLE_EDGE
	db 0 ; no more level-up moves

GarchompEvosAttacks:
	db 0 ; no more evolutions
	db 1, BODY_SLAM
	db 1, SWORDS_DANCE
	db 1, IRON_HEAD
	db 1, TACKLE
	db 1, MUD_SLAP
	db 1, BITE
	db 1, MAGNITUDE
	db 1, DRAGONBREATH
	db 1, ROCK_THROW
	db 1, SLASH
	db 1, DIG
	db 1, DRAGON_CLAW
	db 48, CRUNCH
	db 54, SANDSTORM
	db 66, DRAGON_DANCE
	db 72, OUTRAGE
	db 0 ; no more level-up moves


ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 8, GUST
	db 15, REFLECT
	db 22, ICE_SHARD
	db 29, AGILITY
	db 36, ANCIENTPOWER
	db 43, AURORA_BEAM
	db 50, AIR_CUTTER
	db 57, ICE_BEAM
	db 64, WHIRLWIND
	db 71, LOCK_ON
	db 79, HURRICANE
	db 86, RECOVER
	db 93, HAIL
	db 100, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 8, PECK
	db 15, LIGHT_SCREEN
	db 22, THUNDER_WAVE
	db 29, AGILITY
	db 36, ANCIENTPOWER
	db 43, SHOCK_WAVE
	db 50, DRILL_PECK
	db 57, THUNDERBOLT
	db 64, WHIRLWIND
	db 71, LOCK_ON
	db 79, RAIN_DANCE
	db 86, RECOVER
	db 93, THUNDER
	db 100, ZAP_CANNON
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 8, PECK
	db 15, FIRE_SPIN
	db 22, AERIAL_ACE
	db 29, ANCIENTPOWER
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, FIRE_BLAST
	db 57, AIR_CUTTER
	db 64, WHIRLWIND
	db 71, HEAT_WAVE
	db 79, FLY ; BRAVE BIRD
	db 86, MORNING_SUN
	db 93, SUNNY_DAY
	db 100, SOLARBEAM
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 8, THUNDERSHOCK
	db 15, SPARK
	db 22, BITE
	db 29, CALM_MIND
	db 36, ROAR
	db 43, HOWL
	db 50, PSYCHIC_M
	db 57, REFLECT
	db 64, THUNDERBOLT
	db 71, CRUNCH
	db 79, RAIN_DANCE
	db 86, THUNDER
	db 93, ZAP_CANNON
	db 100, EXTREMESPEED
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 8, LEER
	db 15, BITE
	db 22, STOMP
	db 29, FLAME_WHEEL
	db 36, ROAR
	db 43, WILD_CHARGE
	db 50, SWAGGER
	db 57, CALM_MIND
	db 64, CRUNCH
	db 71, HEAT_WAVE
	db 79, SUNNY_DAY
	db 86, MORNING_SUN
	db 93, FLARE_BLITZ
	db 100, EXTREMESPEED
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 8, LEER
	db 15, WATER_GUN
	db 22, BITE
	db 29, CALM_MIND
	db 36, ROAR
	db 43, BUBBLEBEAM
	db 50, PSYCHIC_M
	db 57, MIRROR_COAT
	db 64, SURF
	db 71, ICE_BEAM
	db 79, RAIN_DANCE
	db 86, HAZE
	db 93, HYDRO_PUMP
	db 100, EXTREMESPEED
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 8, SWIFT
	db 15, ANCIENTPOWER
	db 22, PSYBEAM
	db 29, SAFEGUARD
	db 36, AMNESIA
	db 43, AURA_SPHERE
	db 50, CALM_MIND
	db 57, PSYCHIC_M
	db 64, RECOVER
	db 71, BARRIER
	db 79, FUTURE_SIGHT
	db 86, POWER_GEM
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, HIDDEN_POWER
	db 5, SAFEGUARD
	db 10, RECOVER
	db 15, CONFUSION
	db 20, AIR_CUTTER
	db 25, DRAGONBREATH
	db 30, PROTECT
	db 35, PSYBEAM
	db 40, ZENHEADBUTT
	db 45, DRAGON_PULSE
	db 50, REFLECT
	db 50, LIGHT_SCREEN
	db 55, AIR_SLASH
	db 60, PSYCHIC_M
	db 0 ; no more evolutions

LatiosEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, HIDDEN_POWER
	db 5, SAFEGUARD
	db 10, AIR_SLASH
	db 15, CONFUSION
	db 20, AIR_CUTTER
	db 25, DRAGONBREATH
	db 30, PROTECT
	db 35, PSYBEAM
	db 40, ZENHEADBUTT
	db 45, DRAGON_PULSE
	db 50, DRAGON_DANCE
	db 55, RECOVER
	db 60, PSYCHIC_M
	db 0 ; no more evolutions

HeatranEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_SPIN
	db 8, LEER
	db 15, METAL_CLAW
	db 22, ANCIENTPOWER
	db 29, SCREECH
	db 36, IRON_HEAD
	db 43, CRUNCH
	db 50, HEAT_WAVE
	db 57, EARTH_POWER
	db 64, STONE_EDGE
	db 71, FLAMETHROWER
	db 79, SUNNY_DAY
	db 86, AGILITY
	db 93, FLASH_CANNON
	db 100, EXPLOSION
	db 0 ; no more level-up moves

CresseliaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 8, SAFEGUARD
	db 15, HAZE
	db 22, SLASH
	db 29, AURORA_BEAM
	db 36, PSYBEAM
	db 43, RECOVER
	db 50, MIRROR_COAT
	db 57, CALM_MIND
	db 64, MOONBLAST
	db 71, REFLECT
	db 79, LIGHT_SCREEN
	db 86, GLARE
	db 93, PSYCHIC_M
	db 100, FUTURE_SIGHT
	db 0 ; no more level-up moves

GiratinaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH
	db 1, SCARY_FACE
	db 7, RAPID_SPIN
	db 14, ANCIENTPOWER
	db 21, HEX
	db 28, SLASH
	db 35, SHADOW_CLAW
	db 42, PAIN_SPLIT
	db 49, DESTINY_BOND
	db 56, AURA_SPHERE
	db 63, DRAGON_CLAW
	db 70, EARTH_POWER
	db 77, PHANTOMFORCE
	db 84, BEAT_UP
	db 0 ; no more evolutions

