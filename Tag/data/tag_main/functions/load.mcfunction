forceload add 0 0 0 0

# Adding Objectives
scoreboard objectives add gameStart dummy

scoreboard objectives add hitDetect minecraft.custom:damage_dealt

scoreboard objectives add startBuild dummy

scoreboard objectives add gameTimer dummy

scoreboard objectives add Numbers dummy

scoreboard objectives add Toggle dummy

scoreboard objectives add Powerup dummy

scoreboard objectives add trapDestroy dummy

scoreboard objectives add yDistance dummy

scoreboard objectives add xDistance dummy

scoreboard objectives add zDistance dummy

# Setting Fake PLayers
scoreboard players set State gameStart -1

scoreboard players set Hit0 hitDetect 0

scoreboard players set Build startBuild 0

scoreboard players set Timer gameTimer 0
scoreboard players set EndTimer gameTimer 600
scoreboard players set TimerMin gameTimer 100


scoreboard players set FirstRound gameTimer 0
scoreboard players set SecondRound gameTimer 0
scoreboard players set LastRound gameTimer 0

scoreboard players set PowerupTimer gameTimer 0

scoreboard players set Three Numbers 2
scoreboard players set Two Numbers 3
scoreboard players set TrapCooldown Numbers 100
scoreboard players set SpeedTimer Numbers 200
scoreboard players set FireworkCooldown Numbers 600
scoreboard players set PowerupCooldown Numbers 1200

scoreboard players set yDistance Toggle 1

scoreboard players set PowerUps Toggle 1
scoreboard players set Type Powerup 0

scoreboard players set Two Numbers 3
scoreboard players set Three Numbers 2
scoreboard players set SpeedTimer Numbers 100

scoreboard players set yResults yDistance 0

# Adds the teams
## team Taggers
team add taggers "Taggers"
team modify taggers color aqua

## team Runners
team add runner "Runners"
team modify runner color green


## Item colors

### This is for the wooden sword powerup
team add Red
team modify Red color red

### This is for the Clap Trap item
team add Yellow
team modify Yellow color yellow

## Neutral for pregame
team add neutral "Neutral"
team modify neutral friendlyFire false

tellraw @a {"text":"Tag Loaded!","color":"32e65c"}
