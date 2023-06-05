LoadSpecialMapPalette:
	ld a, [wMapTileset]
	cp TILESET_POKECOM_CENTER
	jr z, .pokecom_2f
	cp TILESET_BATTLE_TOWER_INSIDE
	jr z, .battle_tower_inside
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_HOUSE
	jr z, .house
	cp TILESET_RADIO_TOWER
	jr z, .radio_tower
	cp TILESET_MANSION
	jr z, .mansion_mobile
	cp TILESET_LAB
	jr z, .lab
	cp TILESET_MORGAN_ROOM
	jr z, .morgan_house
	cp TILESET_ERABLE
	jr z, .erable
	cp TILESET_CASTOR
	jr z, .castor
	cp TILESET_ROUTES_SNOW
	jr z, .routes_snow
	cp TILESET_ROUTES
	jr z, .routes
	cp TILESET_CASTOR_GYM
	jr z, .castor_gym
	cp TILESET_FOREST_DUNGEON
	jr z, .forest_dungeon
	cp TILESET_BEEDRILL_DUNGEON
	jr z, .beedrill_dungeon
	cp TILESET_SPOOKY_FOREST
	jr z, .spooky_forest
	cp TILESET_BIGBRIDGE
	jr z, .big_bridge
	cp TILESET_ETALONPORT
	jr z, .etalon_port
	cp TILESET_BOATS
	jr z, .boats
	cp TILESET_SAFARI
	jr z, .safari
	cp TILESET_OMEKATA
	jr z, .omekata
	cp TILESET_GOSHA
	jr z, .gosha	
	cp TILESET_GAME_CORNER
	jr z, .goshagym
	jr .do_nothing
	
	
	
.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.radio_tower
	call LoadRadioTowerPalette
	scf
	ret

.mansion_mobile
	call LoadMansionPalette
	scf
	ret

.lab
	call LoadLabPalette
	scf
	ret

.morgan_house
	call LoadMorganHousePalette
	scf
	ret

.erable
	call LoadErablePalette
	scf
	ret

.castor	
	call LoadCastorPalette
	scf
	ret

.routes_snow
	call LoadRouteSnowPalette
	scf
	ret

.routes
	call LoadRoutePalette
	scf
	ret

.castor_gym
	call LoadCastorGymPalette
	scf 
	ret

.forest_dungeon
	call LoadForestDungeonPalette
	scf
	ret

.beedrill_dungeon
	call LoadBeedrillDungeonPalette
	scf
	ret

.spooky_forest
	call LoadSpookyForestGraveyardPalette
	scf
	ret

.big_bridge
	call LoadBigBridgePalette
	scf
	ret

.etalon_port
	call LoadEtalonPortPalette
	scf
	ret

.boats
	call LoadBoatsPalette
	scf
	ret

.safari
	call LoadSafariPalette
	scf
	ret

.omekata
	call LoadOmekataPalette
	scf
	ret

.gosha
	call LoadGoshaPalette
	scf
	ret

.goshagym
	call LoadGameCornerPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadPokeComPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadBattleTowerInsidePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

LoadRadioTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RadioTowerPalette:
INCLUDE "gfx/tilesets/radio_tower.pal"

MansionPalette1:
INCLUDE "gfx/tilesets/mansion_1.pal"

LoadMansionPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_YELLOW
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_WATER
	ld hl, MansionPalette1 palette 6
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_ROOF
	ld hl, MansionPalette1 palette 8
	ld bc, 1 palettes
	call FarCopyWRAM
	ret

MansionPalette2:
INCLUDE "gfx/tilesets/mansion_2.pal"

LoadLabPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, LabPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

LabPalette:
	INCLUDE "gfx/tilesets/lab.pal"

LoadMorganHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MorganHousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

MorganHousePalette:
	INCLUDE "gfx/tilesets/morgan_house.pal"

LoadErablePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ErablePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

ErablePalette:
INCLUDE "gfx/tilesets/palettes/erable.pal"

LoadCastorPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CastorPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

CastorPalette:
INCLUDE "gfx/tilesets/castor.pal"

LoadRouteSnowPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RouteSnowPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RouteSnowPalette:
INCLUDE "gfx/tilesets/erable.pal"

LoadRoutePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RoutePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RoutePalette:
INCLUDE "gfx/tilesets/routes.pal"

LoadCastorGymPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CastorGymPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

CastorGymPalette:
INCLUDE "gfx/tilesets/castor_gym.pal"

LoadForestDungeonPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ForestDungeonPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

ForestDungeonPalette:
INCLUDE "gfx/tilesets/forest_dungeon.pal"

LoadBeedrillDungeonPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BeedrillDungeonPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BeedrillDungeonPalette: 
INCLUDE "gfx/tilesets/beedrill_dungeon.pal"

LoadSpookyForestGraveyardPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SpookyForestPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

SpookyForestPalette:
INCLUDE "gfx/tilesets/spooky_forest.pal"

LoadBigBridgePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BigBridgePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret


BigBridgePalette:
INCLUDE "gfx/tilesets/big_bridge.pal"

LoadEtalonPortPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, EtalonPortPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

EtalonPortPalette:
INCLUDE "gfx/tilesets/etalon_port.pal"

LoadBoatsPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BoatsPalette	
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BoatsPalette:
INCLUDE "gfx/tilesets/boats.pal"

LoadSafariPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, SafariPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

SafariPalette:
INCLUDE "gfx/tilesets/safari.pal"

LoadOmekataPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, OmekataPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

OmekataPalette:
INCLUDE "gfx/tilesets/omekata.pal"

LoadGoshaPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, GoshaPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

GoshaPalette:
INCLUDE "gfx/tilesets/gosha.pal"

LoadGameCornerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, GameCornerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

GameCornerPalette:
INCLUDE "gfx/tilesets/GoshaGym.pal"