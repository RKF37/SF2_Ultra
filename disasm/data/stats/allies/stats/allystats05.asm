
; ASM FILE data\stats\allies\stats\allystats05.asm :
; 0x1EE426..0x1EE454 : Ally stats 05
AllyStats05:    forClass  THIF    ; SLADE
                hpGrowth  8, 48, LATE
                mpGrowth  8, 36, EARLY
                attGrowth 5, 45, LINEAR
                defGrowth 8, 55, EARLY
                agiGrowth 10, 55, LINEAR
                spellList &
                    1, EGRESS, &
                    2,BLACK_MAGIC|LV2,&
                    8, THUNDER, &
                    16, THUNDER|LV2,&
                    20, THUNDER|LV3,&
                    25,THUNDER|LV4
                    
                forClass  NINJ
                hpGrowth  48, 127, LATE
                mpGrowth  0, 150, LINEAR
                attGrowth 45, 190, LATE
                defGrowth 33, 180, LATE
                agiGrowth 55, 190, LATE
                spellList &
                    32, KATON, &
                    37, KATON|LV2, &                    
                    44, KATON|LV3, &
                    50, KATON|LV4
                    
