
; ASM FILE data\stats\allies\stats\allystats08.asm :
; 0x1EE498..0x1EE4BA : Ally stats 08
AllyStats08:    forClass  RNGR ;MAY
                hpGrowth  9, 52, LINEAR
                mpGrowth  0, 32, EARLY
                attGrowth 8, 57, LINEAR
                defGrowth 4, 36, LINEAR
                agiGrowth 5, 36, LINEAR
                spellList 
                    12,BEAM|LV2|,&
20,BEAM|LV3|,&,30,BEAM|LV4|
                forClass  BWNT
                hpGrowth  52, 133, LINEAR
                mpGrowth  0, 100, LINEAR
                attGrowth 47, 87, LINEAR
                defGrowth 31, 77, LINEAR
                agiGrowth 29, 69, LINEAR
                spellList 
                    
