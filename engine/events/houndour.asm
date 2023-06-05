GRAMPS_OT_ID EQU 00008

GiveHoundour:
    xor a;
    ld [wMonType], a

    ld a, GROWLITHE 
    ld [wCurPartySpecies], a
    ld a, 5
    ld [wCurPartyLevel], a

    predef TryAddMonToParty
	jr nc, .NotGiven

    ld b, 0 
    farcall SetGiftPartyMonCaughtData

    ld hl, wPartyMon1ID
    call AddNTimes
    ld a, HIGH(GRAMPS_OT_ID)
    ld [hli], a
    ld [hl], LOW(GRAMPS_OT_ID)

    ld a, [wPartyCount]
    dec a
    ld hl, wPartyMonOT
    call SkipNames
    ld de, SpecialHoundourOT
    call CopyName2

    ld a, [wPartyCount]
    dec a
    ld hl, wPartyMonNicknames
    call SkipNames
    ld de, SpecialHoundourNick
    call CopyName2

.NotGiven:
	xor a
	ld [wScriptVar], a
	ret

SpecialHoundourOT:
    db "GRAMPS@"

SpecialHoundourNick:
    db "Ronald@"

ReturnHoundour:
    farcall SelectMonFromParty
    
    ld a, [wCurPartySpecies]
	cp GROWLITHE

    ld a, [wCurPartyMon]
	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes

    ;OT ID
    ld a, [hli]
	cp HIGH(GRAMPS_OT_ID)
	ld a, [hl]
	cp LOW(GRAMPS_OT_ID)
	
    ;OT
    ld a, [wCurPartyMon]
	ld hl, wPartyMonOT
	call SkipNames
	ld de, SpecialHoundourOT
.CheckOT:
    ld a, [de]
    cp [hl]
    jr nz, .DontReturn
    cp "@"
    jr z, .done
    inc de
	inc hl
	jr .CheckOT

.done
    xor a ; REMOVE_PARTY
	ld [wPokemonWithdrawDepositParameter], a
	callfar RemoveMonFromPartyOrBox
    ld a, GRAMPS_GROWLITHE_RETURNED
    ld [wScriptVar], a
	ret
.DontReturn:
	xor a ; if its not houndhour
	ld [wScriptVar], a
	ret
