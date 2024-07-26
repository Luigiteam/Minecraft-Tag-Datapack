execute store result score @s Rand run random value 0..9

execute if score @s Rand matches 0..4 run tag @s add runner
execute if score @s Rand matches 5..9 run tag @s add tagger