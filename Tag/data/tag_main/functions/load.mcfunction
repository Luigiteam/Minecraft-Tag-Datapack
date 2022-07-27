forceload add 0 0 0 0

# Adding Objectives
scoreboard objectives add gameStart dummy

scoreboard objectives add hitDetect minecraft.custom:damage_dealt

scoreboard objectives add startBuild dummy

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

# Setting Fake PLayers
scoreboard players set State gameStart -1

scoreboard players set Hit0 hitDetect 0

scoreboard players set Build startBuild 0

scoreboard players set Timer gameTimer 0
scoreboard players set EndTimer gameTimer 2400
scoreboard players set TimerMin gameTimer 2400


scoreboard players set FirstRound gameTimer 0
scoreboard players set SecondRound gameTimer 0
scoreboard players set LastRound gameTimer 0

scoreboard players set PowerupTimer gameTimer 0

scoreboard players set One Numbers 1
scoreboard players set Two Numbers 2
scoreboard players set Three Numbers 3
scoreboard players set Four Numbers 4
scoreboard players set TrapCooldown Numbers 100
scoreboard players set SpeedTimer Numbers 200
scoreboard players set FireworkCooldown Numbers 600
scoreboard players set PowerupCooldown Numbers 1200

scoreboard players set yDistance Toggle 1

scoreboard players set Tools Toggle 2

scoreboard players set PowerUps Toggle 1
scoreboard players set num Rand 0

scoreboard players set yResults yDistance 0

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

## Neutral for pregame
team add neutral "Neutral"
team modify neutral friendlyFire false

tellraw @a {"text":"Tag Loaded!","color":"32e65c"}
