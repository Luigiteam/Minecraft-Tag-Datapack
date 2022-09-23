## VERSION 1.4
forceload add 0 0 0 0

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

scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add optionsSelect dummy

scoreboard objectives add effectTrigger trigger

scoreboard objectives add effectTimer dummy

scoreboard objectives add effectType dummy

scoreboard objectives add effectUse minecraft.used:carrot_on_a_stick

scoreboard objectives add effectLost dummy

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

# Setting Fake PLayers
scoreboard players set State gameStart -1

scoreboard players set Timer gameTimer 0
scoreboard players set EndTimer gameTimer 2400
scoreboard players set TimerMin gameTimer 2400


scoreboard players set FirstRound gameTimer 0
scoreboard players set SecondRound gameTimer 0
scoreboard players set LastRound gameTimer 0

scoreboard players set PowerupTimer gameTimer 0

scoreboard players set tnt gameTimer 0

scoreboard players set nOne Numbers -1

scoreboard players set One Numbers 1
scoreboard players set Two Numbers 2
scoreboard players set Three Numbers 3
scoreboard players set Four Numbers 4

scoreboard players set TrapCooldown Numbers 100
scoreboard players set SpeedTimer Numbers 200
scoreboard players set FireworkCooldown Numbers 600
scoreboard players set PowerupCooldown Numbers 400

scoreboard players set players Numbers 0
scoreboard players set runners Numbers 0
scoreboard players set taggers Numbers 0
scoreboard players set spectators Numbers 0
scoreboard players set frozenRunners Numbers 0

scoreboard players set worldBorderSize Numbers 0
scoreboard players set halfWBS Numbers 0
scoreboard players set nHalfWBS Numbers 0

scoreboard players set yDistance Toggle 1

scoreboard players set Tools Toggle 0

scoreboard players set PowerUps Toggle 1

scoreboard players set Insane Toggle 0

scoreboard players set gameMode Toggle 1

scoreboard players set num Rand 0
scoreboard players set anvil Rand 0
scoreboard players set set Rand 0

scoreboard players set yResults yDistance 0

scoreboard players set Selection optionsSelect 0
scoreboard players set Change optionsSelect 0

scoreboard players set Rounds round 0

# Adds the teams
## team Taggers
team add taggers "Taggers"
team modify taggers color aqua

## team Runners
team add runner "Runners"
team modify runner color green

# This is to setup the bossbar timer
bossbar add runnertimer {"text": "Timer","color": "Gold"}
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

## Neutral for pregame
team add neutral "Neutral"
team modify neutral friendlyFire false

gamerule keepInventory true

scoreboard objectives setdisplay list wins

tellraw @a {"text":"Tag 1.4 Loaded!","color":"32e65c"}
