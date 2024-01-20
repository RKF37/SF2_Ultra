
; ASM FILE data\stats\allies\stats\allystats10.asm :
; 0x1EE4DC..0x1EE4FE : Ally stats 10
AllyStats10:    forClass  BDMN ; luke
                hpGrowth  12, 48, LINEAR
                mpGrowth  2, 56, EARLY
                attGrowth 8, 54, LINEAR
                defGrowth 6, 50, LINEAR
                agiGrowth 7, 50, LINEAR
                spellList &
                    1, HEALIN|LV4, &
                    2,BOOST|LV3,&
                    3,RIPSAW|LV2,&
                    10, BLAST, &
                    15, BLAST|LV2, &                    
                    25, BLAST|LV3, &
                    35, BLAST|LV4
                    
                forClass  BDBT
                hpGrowth  48, 120, LATE
                mpGrowth  6, 126, EARLY
                attGrowth 44, 184, LINEAR
                defGrowth 35, 170, LINEAR
                agiGrowth 50, 187, LINEAR
                useFirstSpellList
                    
