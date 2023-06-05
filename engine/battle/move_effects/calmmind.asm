BattleCommand_CalmMind:

	ld de, wBattleMonType1
	ld bc, wPlayerSAtkLevel
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonType1
    ld bc, wEnemySAtkLevel

.go	

; SpA
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr c, .raise

; SpD
	inc bc
	ld a, [bc]
	cp MAX_STAT_LEVEL
	jr nc, .cantraise

.raise

; Raise Attack and Defense, and lower Speed.

	ld a, $1
	ld [wBattleAnimParam], a
	call AnimateCurrentMove
	call BattleCommand_SpecialAttackUp
	call BattleCommand_StatUpMessage
	call ResetMiss
	call BattleCommand_SpecialDefenseUp
	jp BattleCommand_StatUpMessage


.cantraise

; Can't raise either stat.

	ld b, ABILITY + 1
	call GetStatName
	call AnimateFailedMove
	ld hl, WontRiseAnymoreText
	jp StdBattleTextbox
