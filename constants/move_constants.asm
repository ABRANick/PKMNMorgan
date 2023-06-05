	const_def
	const NO_MOVE      ; 00
	const POUND
	const ATTRACT
	const BATON_PASS
	const BELLY_DRUM
	const BIDE
	const BODY_SLAM
	const CAPTIVATE
	const CONVERSION
	const CONVERSION2
	const COVET
	const CRUSH_CLAW
	const DEFENSE_CURL
	const DOUBLE_EDGE
	const ECHOED_VOICE
	const ENCORE
	const ENDURE
	const EXPLOSION
	const EXTREMESPEED
	const FALSE_SWIPE
	const FLAIL
	const FLASH
	const FOCUS_ENERGY
	const FURY_ATTACK
	const GLARE
	const GROWL
	const HEADBUTT
	const HEAL_BELL
	const HIDDEN_POWER
	const HORN_ATTACK
	const HOWL
	const HYPER_BEAM
	const HYPER_VOICE
	const LEER
	const LOCK_ON
	const METRONOME
	const MIMIC
	const PAY_DAY
	const PAIN_SPLIT
	const PERISH_SONG
	const PROTECT
	const QUICK_ATTACK
	const RAGE
	const RAPID_SPIN
	const RECOVER
	const RETURN
	const REST
	const ROAR
	const SAFEGUARD
	const SCARY_FACE
	const SCREECH
	const SELFDESTRUCT
	const SING
	const SLASH
	const SLEEP_TALK
	const SOFTBOILED
	const SUBSTITUTE
	const SUPER_FANG
	const STOMP
	const SWAGGER
	const SWIFT
	const SWORDS_DANCE
	const TACKLE
	const TAKE_DOWN
	const THRASH
	const TRI_ATTACK
	const WHIRLWIND
	const WRAP
	const BLAZE_KICK
	const EMBER
	const FIRE_BLAST
	const FIRE_PUNCH
	const FIRE_SPIN
	const FLAME_WHEEL
	const FLAMETHROWER
	const FLARE_BLITZ
	const HEAT_WAVE
	const MORNING_SUN
	const MYSTICALFIRE
	const SUNNY_DAY
	const WILL_O_WISP
	const AQUA_JET
	const BUBBLEBEAM
	const HYDRO_PUMP
	const RAIN_DANCE
	const SURF
	const SCALD
	const WATER_GUN
	const WATERFALL
	const WHIRLPOOL
	const ABSORB
	const ENERGY_BALL
	const GIGA_DRAIN
	const GROWTH
	const LEAF_BLADE
	const LEECH_SEED
	const MAGICAL_LEAF
	const MEGA_DRAIN
	const PETAL_DANCE
	const RAZOR_LEAF
	const SEED_BOMB
	const SEED_FLARE
	const SOLARBEAM
	const SLEEP_POWDER
	const STUN_SPORE
	const VINE_WHIP
	const SHOCK_WAVE
	const SPARK
	const THUNDER
	const THUNDER_WAVE
	const THUNDERBOLT
	const THUNDERPUNCH
	const THUNDERSHOCK
	const VOLT_TACKLE
	const WILD_CHARGE
	const ZAP_CANNON
	const AURORA_BEAM
	const BLIZZARD
	const HAIL
	const HAZE
	const ICE_BEAM
	const ICE_PUNCH
	const ICE_SHARD
	const ICICLECRASH
	const POWDER_SNOW
	const AURA_SPHERE
	const BULK_UP
	const COUNTER
	const CLOSECOMBAT
	const CROSS_CHOP
	const DOUBLE_KICK
	const DRAIN_PUNCH
	const DYNAMICPUNCH
	const FORCE_PALM
	const REVERSAL
	const HI_JUMP_KICK
	const JUMP_KICK
	const KARATE_CHOP
	const LOW_SWEEP
	const MACH_PUNCH
	const ROCK_SMASH
	const SEISMIC_TOSS
	const STRENGTH
	const ACID
	const GUNK_SHOT
	const POISON_JAB
	const POISON_STING
	const POISON_TAIL
	const SMOG
	const SLUDGE
	const SLUDGE_BOMB
	const TOXIC
	const BONE_CLUB
	const BONEMERANG
	const BULLDOZE
	const DIG
	const EARTH_POWER
	const EARTHQUAKE
	const MAGNITUDE
	const MUD_SHOT
	const MUD_SLAP
	const SPIKES
	const AERIAL_ACE
	const AIR_CUTTER
	const AIR_SLASH
	const BRAVE_BIRD
	const DRILL_PECK
	const FLY
	const GUST
	const HURRICANE
	const PECK
	const AGILITY
	const AMNESIA
	const BARRIER
	const CALM_MIND
	const CONFUSION
	const DREAM_EATER
	const FUTURE_SIGHT
	const HYPNOSIS
	const LIGHT_SCREEN
	const MIRROR_COAT
	const PSYBEAM
	const PSYCHIC_M
	const REFLECT
	const TELEPORT
	const ZENHEADBUTT
	const BUG_BUZZ
	const FURY_CUTTER
	const LEECH_LIFE
	const MEGAHORN
	const PIN_MISSILE
	const SIGNAL_BEAM
	const STRING_SHOT
	const X_SCISSOR
	const TWINEEDLE
	const ANCIENTPOWER
	const HEAD_SMASH
	const POWER_GEM
	const ROCK_SLIDE
	const ROCK_THROW
	const ROCK_TOMB
	const ROLLOUT
	const SANDSTORM
	const STONE_EDGE
	const CONFUSE_RAY
	const DESTINY_BOND
	const HEX
	const LICK
	const MEAN_LOOK
	const NIGHT_SHADE
	const PHANTOMFORCE
	const SHADOW_BALL
	const SHADOW_CLAW
	const SHADOW_PUNCH
	const DRAGON_SWIPE
	const DRAGONBREATH
	const DRAGON_CLAW
	const DRAGON_DANCE
	const DRAGON_PULSE
	const OUTRAGE
	const TWISTER
	const BITE
	const CRUNCH
	const DARK_PULSE
	const FAINT_ATTACK
	const THIEF
	const NASTY_PLOT
	const NIGHT_SLASH
	const SNARL
	const BULLET_PUNCH
	const CUT
	const FLASH_CANNON
	const IRON_HEAD
	const METAL_CLAW
	const METEOR_MASH
	const MIRROR_SHOT
	const STEEL_WING
	const CHARM
	const DAZZLINGLEAM
	const DRAININGKISS
	const FAIRY_WIND
	const LOVELY_KISS
	const MOONBLAST
	const PLAYROUGH
	const CURSE
	const SPLASH
	const STRUGGLE
	const BEAT_UP
	
	
NUM_ATTACKS EQU const_value - 1

; Battle animations use the same constants as the moves up to this point
	const_next $ff
	const ANIM_SWEET_SCENT_2     ; ff
	const ANIM_THROW_POKE_BALL   ; 100
	const ANIM_SEND_OUT_MON      ; 101
	const ANIM_RETURN_MON        ; 102
	const ANIM_CONFUSED          ; 103
	const ANIM_SLP               ; 104
	const ANIM_BRN               ; 105
	const ANIM_PSN               ; 106
	const ANIM_SAP               ; 107
	const ANIM_FRZ               ; 108
	const ANIM_PAR               ; 109
	const ANIM_IN_LOVE           ; 10a
	const ANIM_IN_SANDSTORM      ; 10b
	const ANIM_IN_NIGHTMARE      ; 10c
	const ANIM_IN_WHIRLPOOL      ; 10d
; battle anims
	const ANIM_MISS              ; 10e
	const ANIM_ENEMY_DAMAGE      ; 10f
	const ANIM_ENEMY_STAT_DOWN   ; 110
	const ANIM_PLAYER_STAT_DOWN  ; 111
	const ANIM_PLAYER_DAMAGE     ; 112
	const ANIM_WOBBLE            ; 113
	const ANIM_SHAKE             ; 114
	const ANIM_HIT_CONFUSION     ; 115
	const ANIM_IN_HAIL           ; 116

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION
