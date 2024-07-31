# This function gets triggered by a tagger who uses the clock powerup
execute store result score set Rand run random value 0..27

execute if score set Rand matches 25..27 run function tag_main:winners

execute unless score set Rand matches 25..27 run scoreboard players add Timer gameTimer 600

clear @s clock[minecraft:custom_data={Floating:1b}] 1

execute unless score set Rand matches 25..27 run tellraw @a "The Timer got added by 30 seconds"

advancement revoke @s only tag_main:clock_tagger
