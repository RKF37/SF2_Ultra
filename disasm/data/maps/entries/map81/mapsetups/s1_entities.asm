
; ASM FILE data\maps\entries\map81\mapsetups\s1_entities.asm :
; 
ms_map81_Entities:
                msFixedEntity 32, 12, DOWN, MAPSPRITE_SAILOR, eas_Init
                msWalkingEntity 16, 11, RIGHT, MAPSPRITE_CAT, 16, 11, 1
				msFixedEntity 12, 17, UP, MAPSPRITE_BOY,eas_Init
				msFixedEntity 29, 20, DOWN, MAPSPRITE_PRIEST,eas_Init
				msFixedEntity 33, 28, LEFT, MAPSPRITE_SOLDIER2, eas_LeftRightMoveLoop
				msFixedEntity 36, 28, RIGHT, MAPSPRITE_SOLDIER2, eas_RightLeftMoveLoop
				msFixedEntity 22, 13, UP, MAPSPRITE_MAID, eas_Init
				msFixedEntity 50, 5, RIGHT, MAPSPRITE_WORKER, eas_Init
				msFixedEntity 24, 7, RIGHT, MAPSPRITE_SOLDIER2, eas_Init
				msFixedEntity 27, 20, LEFT, MAPSPRITE_DWARF, eas_InitSlow
				msWalkingEntity 37, 4, DOWN, MAPSPRITE_WOMAN1,37,4,1
				msFixedEntity 36, 20, UP, MAPSPRITE_SOLDIER1, eas_InitSlow
				msWalkingEntity 33, 17, DOWN, MAPSPRITE_MAN2, 33, 17, 2
				msFixedEntity 15, 5, LEFT, ALLY_RUCE, eas_Init
                msEntitiesEnd
