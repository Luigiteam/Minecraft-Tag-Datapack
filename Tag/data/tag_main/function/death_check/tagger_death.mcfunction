execute store result storage death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

tag @s add this
summon marker ~ ~ ~ {Tags:[deathPos]}
execute as @e[type=marker,tag=deathPos] at @s run function tag_main:death_check/at_pos
tag @s remove this