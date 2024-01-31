
; ASM FILE data\stats\allies\stats\allystats01.asm :
; 0x1EE31C..0x1EE36B : Ally stats 30
AllyStats30:    forClass  ACHH ; SHADE
                hpGrowth  8, 44, LATE
                mpGrowth  0,50, NONE
                attGrowth 6, 46, LINEAR
                defGrowth 5,45, LATE
                agiGrowth 6,50, EARLY
                spellList &
                2,BEAM,&
                3,BLACK_MAGIC,&
                10,BEAM|LV2,&
                15,BLACK_MAGIC|LV2,&
                20,BEAM|LV3,&
                30,BEAM|LV4
                    
                forClass  SNII
                hpGrowth  44, 150, LATE
                mpGrowth  0,100, EARLY
                attGrowth 46, 150, LINEAR
                defGrowth 26, 170, LINEAR
                agiGrowth 30, 163, LINEAR
                spellList 

                    
