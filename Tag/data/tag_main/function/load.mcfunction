## VERSION 1.6
forceload add 0 0 0 0

## NEED TO ADD IN SETTINGS FOR yDistance and keepInventory Toggles

# Adding Objectives
scoreboard objectives add gameStart dummy

scoreboard objectives add gameTimer dummy

scoreboard objectives add Numbers dummy

scoreboard objectives add Toggle dummy

scoreboard objectives add Rand dummy

scoreboard objectives add trapDestroy dummy

scoreboard objectives add yDistance dummy

scoreboard objectives add xDistance dummy

scoreboard objectives add zDistance dummy

scoreboard objectives add airTime dummy

scoreboard objectives add elytraEquip dummy

scoreboard objectives add optionsSelect dummy

scoreboard objectives add effectTrigger trigger

scoreboard objectives add effectTimer dummy

scoreboard objectives add effectType dummy

scoreboard objectives add effectUse minecraft.used:carrot_on_a_stick
scoreboard objectives add effectUseWarped minecraft.used:warped_fungus_on_a_stick

scoreboard objectives add effectLost dummy
scoreboard objectives add effectLostWarped dummy

scoreboard objectives add effectAmount dummy

scoreboard objectives add eyeTimer dummy

scoreboard objectives add timeFroze dummy

scoreboard objectives add oid dummy

scoreboard objectives add wins dummy

scoreboard objectives add round dummy

scoreboard objectives add teamChoose trigger

scoreboard objectives add damageDelt custom:minecraft.damage_dealt

scoreboard objectives add reverseTime dummy

scoreboard objectives add reverseTimeTemp dummy

scoreboard objectives add blindTimer dummy

scoreboard objectives add heartBeatSpeed dummy

scoreboard objectives add heartBeatTimer dummy

scoreboard objectives add markerTimer dummy

scoreboard objectives add giveBook trigger

scoreboard objectives add textTrigger trigger

scoreboard objectives add TP dummy

scoreboard objectives add Build dummy

scoreboard objectives add playerRevelerSound dummy

scoreboard objectives add heartBeatSound dummy

scoreboard objectives add deathDetector deathCount
scoreboard objectives add hp health

scoreboard objectives add clockStorage dummy

scoreboard objectives add elytraDestroy dummy
scoreboard objectives add elytraDelay dummy

scoreboard objectives add arrowEffect dummy

scoreboard objectives add crossbowHeld dummy

scoreboard objectives add arrowHit dummy

scoreboard objectives add powerupSounds dummy

scoreboard objectives add guiState dummy
scoreboard objectives add guiDelay dummy
scoreboard objectives add guiUpdate dummy

scoreboard objectives add playerJoin dummy
# Setting Fake PLayers
scoreboard players set State gameStart 0

scoreboard players set Timer gameTimer 4200
scoreboard players set EndTimer gameTimer 2400
scoreboard players set TimerMin gameTimer 2400


scoreboard players set FirstRound gameTimer 0
scoreboard players set SecondRound gameTimer 0
scoreboard players set LastRound gameTimer 0

scoreboard players set PowerupTimer gameTimer 0

scoreboard players set winnerTimer gameTimer 0

scoreboard players set tnt gameTimer 0

scoreboard players set -1 Numbers -1

scoreboard players set 1 Numbers 1
scoreboard players set 2 Numbers 2
scoreboard players set 3 Numbers 3
scoreboard players set 4 Numbers 4
scoreboard players set 5 Numbers 5
scoreboard players set 30 Numbers 30

scoreboard players set SpeedTimer Numbers 200
scoreboard players set FireworkCooldown Numbers 600
scoreboard players set PowerupCooldown Numbers 400

scoreboard players set players Numbers 0
scoreboard players set runners Numbers 0
scoreboard players set taggers Numbers 0
scoreboard players set spectators Numbers 0
scoreboard players set frozenRunners Numbers 0

scoreboard players set clock_storage Numbers 0

scoreboard players set worldBorderSize Numbers 150
scoreboard players set worldBorderSizeGet Numbers 150
scoreboard players set halfWBS Numbers 0
scoreboard players set nHalfWBS Numbers 0

scoreboard players set maxHeight Numbers 225
scoreboard players set minDepth Numbers 15

scoreboard players set yDistance Toggle 1

scoreboard players set Tools Toggle 4

scoreboard players set PowerUps Toggle 1

scoreboard players set Insane Toggle 0

scoreboard players set gameMode Toggle 1

scoreboard players set maxHeight Toggle 1
scoreboard players set minDepth Toggle 1

## Powerup Toggles

scoreboard players set kbStick Toggle 1
scoreboard players set fangTrap Toggle 1
scoreboard players set potionInvis Toggle 1
scoreboard players set elytra Toggle 1
scoreboard players set clock Toggle 1
scoreboard players set snowball Toggle 1
scoreboard players set eyeTeleport Toggle 1
scoreboard players set punchBow Toggle 1

scoreboard players set allDisabled Toggle 0

scoreboard players set upgradeModule Toggle 1

scoreboard players set effect Toggle 1

scoreboard players set tog Toggle 0

scoreboard players set num Rand 0
scoreboard players set drop Rand 0
scoreboard players set anvil Rand 0
scoreboard players set set Rand 0

scoreboard players set yResults yDistance 0

scoreboard players set Selection optionsSelect 0
scoreboard players set Change optionsSelect 0
scoreboard players set Mode optionsSelect 0

scoreboard players set Rounds round 0

scoreboard players set build Build 0

scoreboard players set @a teamChoose 0
scoreboard players set @a guiState 1
scoreboard players set @a guiDelay 1
scoreboard players set @a guiUpdate 1

scoreboard players set @a playerJoin 0

# Adds the teams
## team Taggers
team add taggers "Taggers"
team modify taggers color red

## team Runners
team add runner "Runners"
team modify runner color green

# This is to setup the bossbar timer
bossbar add runnertimer {"text": "Timer","color": "gold"}
bossbar set runnertimer style notched_12
bossbar set runnertimer color yellow

## Item colors

### This is for the wooden sword item
team add Red
team modify Red color red

### This is for the Clock of Destiny item
team add Yellow
team modify Yellow color yellow

### This is for the Clap Trap item
team add Orange
team modify Orange color gold

### This is for the Invis Potion item
team add White
team modify White color white

### This is for the Elytra item
team add lightPurple
team modify lightPurple color light_purple

### This if for the Snowball of Destruction
team add aqua
team modify aqua color aqua

### This is for the Eye of Teleportation item
team add green
team modify green color green

### This is for the Punching Bow item
team add gray
team modify gray color gray

## Neutral for pregame
team add neutral "Neutral"
team modify neutral friendlyFire false

gamerule keepInventory true

scoreboard objectives setdisplay list wins

worldborder set 30000000 1
worldborder damage buffer 0.4
worldborder damage amount 5

data modify storage death Pos set value [0.0d,0.0d,0.0d]
data modify storage clock_storage Upgrade set value 0b
data modify storage timer Minutes set value 0
data modify storage math_holder Slot set value [0.0d,0.0d,0.0d]

tellraw @a {"text":"Tag 2.0E Loaded!","color":"#32e65c"}
# tellraw @a [{"text": "Click ","color": "#32e65c"},{"text": "This ","underlined": true,"clickEvent": {"action": "run_command","value": "/function tag_main:begin"}},{"text": " to begin!"}]
