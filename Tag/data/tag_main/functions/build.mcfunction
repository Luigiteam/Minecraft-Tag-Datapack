kill @e[type=armor_stand,nbt={Invisible:1b}]

scoreboard players set State gameStart 0

execute if entity @e[tag=spawn] run function tag_main:reload

tag @r add buildPos
execute at @a[tag=buildPos] run summon armor_stand ~ 309 ~ {Invisible:1b,NoGravity:1b,Tags:["builder"],Invulnerable:1b}
execute at @a[tag=buildPos] run summon armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["tpSpawn"]}

tag @e[tag=buildPos] remove buildPos

execute at @e[tag=builder] run setblock ~ ~-309 ~ air
execute at @e[tag=builder] run spawnpoint @a ~ ~ ~

execute at @e[tag=builder] run setblock ~ ~ ~ structure_block{name:"tag_main:start",mode:"LOAD",posY:0,ignoreEntities:0b}
execute at @e[tag=builder] run setblock ~ ~1 ~ redstone_block

kill @e[tag=builder]

clear @a

# This detects what are the options are set to place the correct buttons

## Keep Inventory
execute if score State gameStart matches 0 store result score num optionsSelect run gamerule keepInventory
execute at @e[tag=spawn] if score State gameStart matches 0 if score num optionsSelect matches 0 run setblock ~-3 ~2 ~-2 birch_button[facing=east]
execute at @e[tag=spawn] if score State gameStart matches 0 if score num optionsSelect matches 1 run setblock ~-3 ~2 ~-2 mangrove_button[facing=east]

## yDistance
execute if score State gameStart matches 0 store result score num optionsSelect run scoreboard players get yDistance Toggle

execute at @e[tag=spawn] if score State gameStart matches 0 if score num optionsSelect matches 0 run setblock ~-2 ~2 ~-3 birch_button[facing=south]
execute at @e[tag=spawn] if score State gameStart matches 0 if score num optionsSelect matches 1 run setblock ~-2 ~2 ~-3 mangrove_button[facing=south]

## Powerups
execute if score State gameStart matches 0 store result score num optionsSelect run scoreboard players get PowerUps Toggle

execute at @e[tag=spawn] if score State gameStart matches 0 if score num optionsSelect matches 0 run setblock ~2 ~2 ~-3 birch_button[facing=south]
execute at @e[tag=spawn] if score State gameStart matches 0 if score num optionsSelect matches 1 run setblock ~2 ~2 ~-3 mangrove_button[facing=south]

# This sets the world border
execute at @e[tag=spawn] run worldborder center ~ ~
worldborder set 125 1