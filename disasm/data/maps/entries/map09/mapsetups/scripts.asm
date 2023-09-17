
; ASM FILE data\maps\entries\map09\mapsetups\scripts.asm :
; 0x568F6..0x56B84 : 
cs_568F6:       textCursor 1372
                setFacing ALLY_BOWIE,RIGHT
                csWait 20
                entityActionsWait 130
                 moveLeft 1
                 moveUp 1
                endActions
                setFacing 130,LEFT
                nextSingleText $C0,130  ; "Where are you from?{W1}"
                csWait 20
                setDest ALLY_PETER,4,58
                setFacing ALLY_PETER,RIGHT
                nextSingleText $0,ALLY_PETER ; "{LEADER} came from{N}Grans Island.{W1}"
                customActscriptWait 130
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 130
                 moveLeft 1
                endActions
                nextSingleText $C0,130  ; "Then we could be related.{W1}"
                csWait 20
                setFacing ALLY_PETER,UP
                csWait 20
                nextSingleText $0,ALLY_PETER ; "What do you mean?{W1}"
                csWait 40
                setActscriptWait 130,eas_InitSlow
                setFacing 130,DOWN
                csWait 30
                setFacing 130,LEFT
                csWait 40
                entityActions 130
                 moveRight 1
                 moveDown 1
                endActions
                csWait 20
                entityActionsWait ALLY_BOWIE
                 moveRight 1
                endActions
                csWait 10
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,RIGHT
                setFacing 130,LEFT
                nextText $C0,130        ; "Our ancestors came to{N}Parmecia to chase after{N}a soldier called Max.{W2}"
                nextText $C0,130        ; "They lost his trail at the{N}shore and then split into{N}two groups.{W2}"
                nextSingleText $C0,130  ; "One group went back to{N}Grans by way of Devil's Tail.{W1}"
                csWait 20
                nextSingleText $0,ALLY_PETER ; "Hmmm...and what happened{N}to Max?{W1}"
                csWait 20
                nextText $C0,130        ; "He wasn't found in Parmecia,{N}so maybe he went to Grans.{N}I'm not really sure.{W2}"
                nextSingleText $C0,130  ; "I think I'll take a nap{N}now.  Bye.{W1}"
                csWait 30
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                setFacing ALLY_PETER,RIGHT
                setFacing ALLY_BOWIE,LEFT
                followEntity ALLY_PETER,ALLY_BOWIE,2
                csc_end
				
cs_569BC:       textCursor 1382
                setDest ALLY_PETER,15,57
                setFacing ALLY_PETER,DOWN
                setFacing ALLY_BOWIE,DOWN
                nextText $C0,ALLY_NICK ; "(Sniff)...(sniff)...I smell{N}something old....{W1}"
                setFacing ALLY_NICK,UP
                nextSingleText $C0,ALLY_NICK ; "That sword must be really{N}old.  Oh, my!{N}It's the Achilles Sword!{W2}"
                customActscriptWait ALLY_NICK
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_BOWIE
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_BOWIE,eas_DeactivateAutoFacing
                entityActions ALLY_NICK
                 moveUp 1
                endActions
                csWait 3
                entityActionsWait ALLY_BOWIE
                 moveUp 1
                endActions
                nextText $C0,ALLY_NICK ; "You're an adventurer, right?{N}Don't you need a vehicle?{N}Huh?{W2}"
                nextSingleText $C0,ALLY_NICK ; "You can get the Ancient{N}Caravan with that sword!{W1}"
                setDest ALLY_PETER,15,58
                setFacing ALLY_PETER,RIGHT
                nextSingleText $0,ALLY_PETER ; "You wouldn't listen to us{N}just a short time ago!{W1}"
                setFacing ALLY_NICK,LEFT
                nextText $C0,ALLY_NICK ; "I was busy and...{W1}"
                setFacing ALLY_NICK,UP
                nextText $C0,ALLY_NICK ; "Let me join you!{W2}"
                nextText $C0,ALLY_NICK ; "I'm the only one who can{N}drive it!{W2}"
                nextText $C0,ALLY_NICK ; "You are going to get the{N}Caravan, aren't you?!{W1}"
                yesNo
                jumpIfFlagSet 89,cs_56A82 ; YES/NO prompt answer
                customActscriptWait ALLY_NICK
                 ac_setSpeed 10,10      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_NICK,eas_DeactivateAutoFacing
                entityActionsWait ALLY_NICK
                 moveDown 1
                endActions
cs_56A70:       textCursor 1391
                nextSingleText $C0,ALLY_NICK ; "You don't know what you'll{N}be missing!{W1}"
                setFacing ALLY_NICK,DOWN
                jump cs_56AD4
cs_56A82:       textCursor 1394
                nextSingleText $C0,ALLY_NICK ; "Great!  Good lad!{W1}"
                nextSingleText $FF,255  ; "{CLEAR}{LEADER} decides to take{N}Dr. {NAME;11} with him.{W1}{CLEAR}"
                setActscriptWait ALLY_NICK,eas_Init
                setPriority ALLY_NICK,$FFFF
                setPriority ALLY_BOWIE,$0
                setActscriptWait ALLY_NICK,eas_Jump
                setActscript ALLY_NICK,eas_Jump
                nextSingleText $C0,ALLY_NICK ; "Let's go!{W1}"
                setPriority ALLY_BOWIE,$FFFF
                setF 725                ; Set after telling NICK that you're going to get the Caravan
                setF 84                 ; NICK is a follower
                setStoryFlag 48         ; Battle 48 unlocked               
                followEntity ALLY_NICK,FOLLOWER_B,2
cs_56AD4:       setActscriptWait ALLY_BOWIE,eas_Init
                followEntity ALLY_PETER,ALLY_BOWIE,2
                csc_end
cs_56AE6:       textCursor 1392
                nextText $C0,ALLY_NICK ; "You again?!{W1}"
                nextText $C0,ALLY_NICK ; "You changed your mind?{N}Hmmm....{W1}"
                yesNo
                jumpIfFlagSet 89,cs_56A82 ; YES/NO prompt answer
                jump cs_56A70
cs_56B02:       textCursor 1411
                setPriority ALLY_DEANNA,$FFFF
                setPriority ALLY_BOWIE,$0
                nextText $0,ALLY_DEANNA   ; "Are you the boy who killed{N}the legendary Kraken?{W2}"
                nextText $0,ALLY_DEANNA   ; "I got to Hassan thanks to{N}you.{W2}"
                nextSingleText $0,ALLY_DEANNA ; "I didn't know this was such a{N}dull town.{W1}"
                csWait 20
                setFacing ALLY_DEANNA,UP
                csWait 30
                setActscriptWait ALLY_DEANNA,eas_Jump
                csWait 20
                faceEntity ALLY_DEANNA,ALLY_BOWIE
                nextSingleText $0,ALLY_DEANNA ; "Wh...what's that?!{W1}"
                faceEntity ALLY_PETER,ALLY_DEANNA
                faceEntity ALLY_DEANNA,ALLY_PETER
                nextSingleText $C0,ALLY_PETER ; "It's the Caravan...an ancient{N}vehicle found in the shrine.{W1}"
                csWait 20
                faceEntity ALLY_DEANNA,ALLY_BOWIE
                nextText $0,ALLY_DEANNA   ; "I love interesting{N}things like that!{W2}"
                nextText $0,ALLY_DEANNA   ; "Wow!  You found it?!{W2}"
                nextSingleText $0,ALLY_DEANNA ; "I want to go with you to{N}see some more interesting{N}things!{W1}"
                join ALLY_DEANNA
                nextSingleText $0,ALLY_DEANNA ; "Adventure!{N}Yo Ho!  Let's go!{W1}"
                setActscriptWait ALLY_DEANNA,eas_Jump
                setActscriptWait ALLY_DEANNA,eas_Jump
                csWait 20
                setPriority ALLY_BOWIE,$FFFF
                addNewFollower ALLY_DEANNA
				csc_end
