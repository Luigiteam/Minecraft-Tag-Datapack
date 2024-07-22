kill @e[type=marker,tag=tpSpawn]

scoreboard players set @a guiDelay 5

# Resetting Fake PLayers
scoreboard players set State gameStart 0

scoreboard players set Timer gameTimer 0
scoreboard players set EndTimer gameTimer 2400

scoreboard players set FirstRound gameTimer 0
scoreboard players set SecondRound gameTimer 0
scoreboard players set LastRound gameTimer 0

scoreboard players set PowerupTimer gameTimer 0

scoreboard players set Type Rand 0

scoreboard players set yResults yDistance 0

gamerule keepInventory true

#This sets the worldborder back to default
worldborder set 30000000 1