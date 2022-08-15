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

# This sets the world border
execute at @e[tag=spawn] run worldborder center ~ ~
worldborder set 125 1