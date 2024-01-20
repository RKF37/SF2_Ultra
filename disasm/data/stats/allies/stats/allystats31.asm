
; ASM FILE data\stats\allies\stats\allystats01.asm :
; 0x1EE31C..0x1EE36B : Ally stats 31
AllyStats31:    forClass  GRDR   ; BLEU
                hpGrowth  26, 180, LATE
                mpGrowth  8, 55, LINEAR
                attGrowth 69,180, LATE
                defGrowth 46, 83, LINEAR
                agiGrowth 55, 90, LINEAR
                spellList & 
                    1,FLAME|LV4,&
                    3,SNOW|LV3,&
                    10,DEMON|LV3,&
                    2, THUNDER|LV2, &
                   15, THUNDER|LV3,&
                    20,THUNDER|LV4
                    
