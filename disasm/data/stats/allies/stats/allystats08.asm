
; ASM FILE data\stats\allies\stats\allystats08.asm :
; 0x1EE498..0x1EE4BA : Ally stats 08
AllyStats08:    forClass  RNGR ;MAY
                hpGrowth  9, 52, LINEAR
                mpGrowth  0,50, EARLY
                attGrowth 8, 57, LINEAR
                defGrowth 4,45, LINEAR
                agiGrowth 5, 45, LINEAR
                spellList &
                10,BEAM|LV2,&
                15,BEAM|LV3,&
                20,BEAM|LV4
                    
                forClass  BWNT
                hpGrowth  52, 133, LINEAR
                mpGrowth  0,100, EARLY
                attGrowth 47, 187, LINEAR
                defGrowth 31, 177, LINEAR
                agiGrowth 29, 169, LINEAR
                spellList 
                    
