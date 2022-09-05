function tag_main:random
scoreboard players operation @s Rand = num Rand
scoreboard players set num Rand 0

execute if score @s Rand matches 0..4 run tag @s add runner
execute if score @s Rand matches 5..9 run tag @s add tagger