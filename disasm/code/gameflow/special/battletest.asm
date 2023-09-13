
; ASM FILE code\gameflow\special\battletest.asm :
; 0x769C..0x7956 : Battle test functions

; =============== S U B R O U T I N E =======================================


DebugModeBattleTest:
                
                move.b  #$FF,((DEBUG_MODE_ACTIVATED-$1000000)).w
                move.b  #$FF,((SPECIAL_TURBO_CHEAT-$1000000)).w
                moveq   #ALLY_FRAYJA,d0
                bsr.w   j_JoinForce
                moveq   #ALLY_DAWN,d0
                bsr.w   j_JoinForce
                moveq   #ALLY_ZYLO,d0
                bsr.w   j_JoinForce
                moveq   #ALLY_JARO,d0
                bsr.w   j_JoinForce
                moveq   #ALLY_ANRI,d0
                bsr.w   j_JoinForce
                moveq   #ALLY_ZYNK,d0
                bsr.w   j_JoinForce
                moveq   #ALLY_MARILL,d0
                bsr.w   j_JoinForce
                moveq   #ALLY_SKREECH,d0
                bsr.w   j_JoinForce
				moveq   #ALLY_KAZIN,d0
                bsr.w   j_JoinForce
				moveq   #ALLY_CRAY,d0
                bsr.w   j_JoinForce
				moveq   #ALLY_BLEU,d0
                bsr.w   j_JoinForce
				
				
                moveq   #0,d0
                move.w  #$63,d1 
                bsr.w   j_SetBaseAgi
                bsr.w   j_SetBaseAtt
                bsr.w   j_SetBaseDef
                bsr.w   j_SetMaxHp
                bsr.w   j_SetCurrentAgi
                bsr.w   j_SetCurrentAtt
                bsr.w   j_SetCurrentDef
                bsr.w   j_SetCurrentHp
                sndCom  MUSIC_BATTLE_THEME_3
                bsr.w   EnableDisplayAndInterrupts
                bsr.w   InitializeDisplay
                bsr.w   EnableDisplayAndInterrupts
                bsr.w   FadeInFromBlack
                trap    #VINT_FUNCTIONS
                dc.w VINTS_ADD
                dc.l VInt_UpdateWindows
                bsr.w   InitializeWindowProperties
                move.w  #COMBATANT_ALLIES_NUMBER,(GENERIC_LIST_LENGTH).l
                lea     (GENERIC_LIST).l,a0
                move.l  #$10203,(a0)+
                move.l  #$4050607,(a0)+
                move.l  #$8090A0B,(a0)+
                move.l  #$C0D0E0F,(a0)+
                move.l  #$10111213,(a0)+
                move.l  #$14151617,(a0)+
                move.l  #$18191A1B,(a0)+
                move.l  #$1C1D1E1F,(a0)+
                bsr.w   CheatModeConfiguration
byte_77DE:
                
                txt     456             ; "Battle number?{D1}"
                clr.w   d0
                clr.w   d1
                move.w  #70,d2
                jsr     j_NumberPrompt
                clsTxt
                tst.w   d0
                blt.w   loc_7894
                movem.w d0-d2,-(sp)
                clr.w   d0
                clr.w   d1
                move.w  #1,d2
                jsr     j_NumberPrompt
                tst.w   d0
                movem.w (sp)+,d0-d2
                beq.s   loc_7820
                move.w  d0,d1
                addi.w  #BATTLE_INTRO_CUTSCENE_FLAGS_START,d1
                jsr     j_SetFlag
loc_7820:
                
                movem.w d0-d4,-(sp)
                move.w  #$46,d0 
                jsr     j_DebugFlagSetter
                movem.w (sp)+,d0-d4
                clr.w   d1
                move.b  d0,d1
                mulu.w  #BATTLEMAPCOORDS_ENTRY_SIZE_FULL,d0
                conditionalPc lea,BattleMapCoordinates,a0,nop
                adda.w  d0,a0
                move.b  (a0)+,d0
            if (STANDARD_BUILD&RELOCATED_SAVED_DATA_TO_SRAM=1)
                move.b  (a0)+,(BATTLE_AREA_X).l
                move.b  (a0)+,(BATTLE_AREA_Y).l
                move.b  (a0)+,(BATTLE_AREA_WIDTH).l
                move.b  (a0)+,(BATTLE_AREA_HEIGHT).l
            else
                move.b  (a0)+,((BATTLE_AREA_X-$1000000)).w
                move.b  (a0)+,((BATTLE_AREA_Y-$1000000)).w
                move.b  (a0)+,((BATTLE_AREA_WIDTH-$1000000)).w
                move.b  (a0)+,((BATTLE_AREA_HEIGHT-$1000000)).w
            endif
                jsr     j_BattleLoop
                jsr     j_ChurchMenuActions
                txt     460             ; "Shop number?{D1}"
                move.w  #0,d0
                move.w  #0,d1
                move.w  #$64,d2 
                jsr     j_NumberPrompt
                clsTxt
                move.b  d0,((CURRENT_SHOP_INDEX-$1000000)).w
                jsr     j_ShopMenuActions
                jsr     j_MainMenuActions
                jsr     j_CaravanActions
                bra.w   byte_77DE       
loc_7894:
                
                bsr.w   sub_78BC
                jsr     j_InitializeMemberListScreen
                tst.b   d0
                bne.w   byte_77DE       
                bpl.s   loc_78B6
                movem.l d0-a6,-(sp)
                jsr     j_ChurchMenuActions
                movem.l (sp)+,d0-a6
                bra.s   loc_78BA
loc_78B6:
                
                bsr.w   LevelUpWholeForce
loc_78BA:
                
                bra.s   loc_7894

    ; End of function DebugModeBattleTest


; =============== S U B R O U T I N E =======================================


sub_78BC:
                
                moveq   #COMBATANT_ALLIES_COUNTER,d7
                clr.w   d0
                lea     (FF0000_RAM_START).l,a0
@Loop:
                
                bsr.w   j_GetCurrentLevel
                bsr.w   sub_7930
                move.w  d1,(a0)
                bsr.w   j_GetMaxHp
                bsr.w   j_SetCurrentHp
                bsr.w   sub_7930
                move.w  d1,2(a0)
                bsr.w   j_GetMaxMp
                bsr.w   j_SetCurrentMp
                bsr.w   sub_7930
                move.w  d1,4(a0)
                bsr.w   j_GetBaseAtt
                bsr.w   sub_7930
                move.w  d1,6(a0)
                bsr.w   j_GetBaseDef
                bsr.w   sub_7930
                move.w  d1,8(a0)
                bsr.w   j_GetBaseAgi
                bsr.w   sub_7930
                move.w  d1,10(a0)
                adda.w  #16,a0
                addq.w  #1,d0
                dbf     d7,@Loop
                
                rts

    ; End of function sub_78BC


; =============== S U B R O U T I N E =======================================


LevelUpWholeForce:
                
                moveq   #COMBATANT_ALLIES_COUNTER,d7
                clr.w   d0
@Loop:
                
                bsr.w   j_LevelUp
                addq.w  #1,d0
                dbf     d7,@Loop
                
                rts

    ; End of function LevelUpWholeForce


; =============== S U B R O U T I N E =======================================


sub_7930:
                
                move.w  d1,d2
                ext.l   d2
                divs.w  #100,d2
                move.w  d2,d3
                mulu.w  #256,d3
                move.w  d3,d1
                swap    d2
                ext.l   d2
                divs.w  #10,d2
                move.w  d2,d3
                mulu.w  #16,d3
                add.w   d3,d1
                swap    d2
                add.w   d2,d1
                rts

    ; End of function sub_7930

