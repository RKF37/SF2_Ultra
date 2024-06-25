
; ASM FILE data\stats\allies\allystartdefs.asm :
; 0x1EE7D0..0x1EE850 : Ally start definitions
tbl_AllyStartDefs:
                
; Syntax        startClass [CLASS_]enum
;               startLevel 1-255
;               startItems &
;                   [ITEM_]enum[|EQUIPPED], &
;                   [ITEM_]enum[|EQUIPPED], &
;                   [ITEM_]enum[|EQUIPPED], &
;                   [ITEM_]enum[|EQUIPPED]
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                startClass SDMN         ; 0: BOWIE
                startLevel 1
                startItems &
                    WOODEN_SWORD|EQUIPPED, &
                    PROTECT_RING|EQUIPPED, &
                    ANGEL_WING, &
                    LEVANTER
                
                startClass PRST         ; 1: SARAH
                startLevel 1
                startItems &
                    WOODEN_ROD|EQUIPPED, &
                    PROTECT_RING|EQUIPPED, &
                    GIANT_KNUCKLES, &
                    power water
                
                startClass KNTE         ; 2: CHESTER
                startLevel 1
                startItems &
                    WOODEN_STICK|EQUIPPED, &
                    MEDICAL_HERB, &
                    power water, &
                    NOTHING
                
                startClass WARR         ; 3: JAHA
                startLevel 1
                startItems &
                    BATON|EQUIPPED, &
                    MEDICAL_HERB, &
                    power water, &
                    NOTHING
                
                startClass MAGE         ; 4: KAZIN
                startLevel 4
                startItems &
                    WOODEN_ROD|EQUIPPED, &
                    PROTECT_RING|EQUIPPED, &
                    FAIRY_POWDER, &
                    BISHOP_ROD
                
                startClass THIF         ; 5: SLADE
                startLevel 7
                startItems &
                    SHORT_KNIFE|EQUIPPED, &
                    ARSON, &
                    HEALING_DROP, &
                    GISARME
                
                startClass MAGG         ; 6: NATASHA
                startLevel 11
                startItems &
                    SHORT_ROD|EQUIPPED, &
                    PROTECT_RING, &
                    BRAVE_APPLE, &
                    BISHOP_ROD
                
                startClass PHNK         ; 7: PETER
                startLevel 11
                startItems &
                    BRAVE_APPLE, &
                   BRAVE_APPLE, &
                    BRAVE_APPLE, &
                    BRAVE_APPLE
                
                startClass RNGR         ; 8: MAY
                startLevel 14
                startItems &
                    WOODEN_ARROW|EQUIPPED, &
                    MEDICAL_HERB, &
                    GRAND_CANNON, &
                    NOTHING
                
                startClass WFMN         ; 9: GERHALT
                startLevel 16
                startItems &
                    HEALING_RAIN, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                
                startClass BDMN         ; 10: LUKE
                startLevel 18
                startItems &
                    LONG_SWORD|EQUIPPED, &
                    PROTECT_RING|EQUIPPED, &
                    BRAVE_APPLE, &
                    COUNTER_SWORD
                
                startClass HERR         ; 11: NICK
                startLevel 10
                startItems &
                    BROAD_SWORD|EQUIPPED, &
                    HEALING_DROP, &
                    ARSON, &
                    NOTHING
                
                startClass SWOR         ; 12: DEANNA
                startLevel 30
                startItems &
                    STEEL_SWORD|EQUIPPED, &
                    PROTECT_RING|EQUIPPED, &
                    BRAVE_APPLE, &
                    BATTLE_SWORD
                
                startClass WOLF         ; 13: ZYLO
                startLevel 30
                startItems &
                    BLIZZARD, &
                    HELMET|EQUIPPED, &
                    BRAVE_APPLE, &
                    NOTHING
                
                startClass MOUS         ; 14: MARILL
                startLevel 1
                startItems &
                    BRAVE_APPLE, &
                    BRAVE_APPLE, &
                    BRAVE_APPLE, &
                    BRAVE_APPLE
                
                startClass RNGR       ; 15: GRAHAM
                startLevel 30
                startItems &
                    ROBIN_ARROW|EQUIPPED, &
                    POWER_WATER, &
                    NOTHING, &
                    NOTHING
                
                startClass WARU         ; 16: RUCE
                startLevel 30
                startItems &
                    HAND_AXE|EQUIPPED, &
                    RUNE_AXE, &
                    NOTHING, &
                    NOTHING
                
                startClass WITC         ; 17: ANRI
                startLevel 1
                startItems &
                    BISHOP_ROD|EQUIPPED, &
                    ELIXIR, &
                    MANA, &
                    BRAVE_APPLE
                
                startClass ACHR         ; 18: JANET
                startLevel 30
                startItems &
                    ROBIN_ARROW|EQUIPPED, &
                    MEDICAL_HERB, &
                    NOTHING, &
                    NOTHING
                
                startClass PALA         ; 19: DAWN
                startLevel 5
                startItems &
                    JAVELIN|EQUIPPED, &
                    HELMET, &
                    NOTHING, &
                    NOTHING
                
                startClass BDBT         ; 20: SKREECH
                startLevel 13
                startItems &
                    GREAT_SWORD|EQUIPPED, &
                    MEDICAL_HERB, &
                    HEALING_SEED, &
                    NOTHING
                
                startClass SORC         ; 21: TAYA
                startLevel 12
                startItems &
                    INDRA_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                
                startClass VICR         ; 22: FRAYJA
                startLevel 17
                startItems &
                    HOLY_STAFF|EQUIPPED, &
                    ELIXIR, &
                    NOTHING, &
                    NOTHING
                
                startClass PGNT         ; 23: JARO
                startLevel 16
                startItems &
                    CHROME_LANCE|EQUIPPED, &
                    HEALING_SEED, &
                    NOTHING, &
                    NOTHING
                
                startClass BRSK         ; 24: GYAN
                startLevel 20
                startItems &
                    BOMB, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                
                startClass MMNK         ; 25: SHEELA
                startLevel 20
                startItems &
                    BRASS_KNUCKLES|EQUIPPED, &
                    MANA, &
                    NOTHING, &
                    NOTHING
                
                startClass RBT          ; 26: ZYNK
                startLevel 27
                startItems &
                    HEALING_DROP, &
                    BOMB, &
                    NOTHING, &
                    NOTHING
                
                startClass MONK          ; 27: CRAY
                startLevel 30
                startItems &
                    MANA, &
                    ELIXIR, &
                    POKEMON, &
                    NOTHING
                
                startClass RDBN         ; 28: LEMON
                startLevel 30
                startItems &
                    DARK_SWORD|EQUIPPED, &
                    STRIKE, &
                    NOTHING, &
                    NOTHING
                
                startClass GLM          ; 29: CLAUDE
                startLevel 24
                startItems &
                    BOMB, &
                    STRIKE, &
                    NOTHING, &
                    NOTHING
                
                startClass ACHH        ; 30 SHADE
                startLevel 3
                startItems &
                    WOODEN_ARROW|EQUIPPED, &
                    HEALING_SEED, &
                    GRAND_CANNON, &
                    NOTHING
                
                startClass GRDR       ; 31 BLEU
                startLevel 6
                startItems &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                
