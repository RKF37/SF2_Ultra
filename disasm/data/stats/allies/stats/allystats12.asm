
; ASM FILE data\stats\allies\stats\allystats12.asm :
; 0x1EE50F..0x1EE542 : Ally stats 12
AllyStats12:    forClass  SWOR ; DEANNA
                hpGrowth  9,56, LINEAR
                mpGrowth  8, 46, EARLY
                attGrowth 6, 57, LINEAR
                defGrowth 6, 42, LINEAR
                agiGrowth 4, 44, EARLY
                spellList &                    
                    1, THUNDER, &
                    2,TORNADO|LV2,&
                    3,BLACK_MAGIC|LV2,&
                    10, THUNDER|LV2, &
                    15, THUNDER|LV3, &
                    25,THUNDER|LV4

                forClass  STAR
                hpGrowth  46, 130, LINEAR
                mpGrowth  16, 156, EARLY
                attGrowth 47, 190, LINEAR
                defGrowth 42, 193, LINEAR
                agiGrowth 34, 162, EARLYANDLATE
                useFirstSpellList
                
                
