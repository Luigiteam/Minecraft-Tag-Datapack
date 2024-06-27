execute if score build Build matches 0 run function tag_main:build_extra

worldborder set 30000000

kill @e[type=marker,tag=tpSpawn]

# This gives the starting text

tellraw @a [{"text": "Tag Ver 2.0 Experimental","color": "#32e65c"},{"text": "\ntesting"}]

# Other
scoreboard players set State gameStart 0

scoreboard players set @a teamChoose 0

scoreboard players set State gameStart 0

execute at @s run summon marker ~ ~3 ~ {Tags:["tpSpawn"]}

execute at @e[tag=tpSpawn,type=marker] run spawnpoint @a ~ ~ ~

scoreboard players set @s giveBook 0