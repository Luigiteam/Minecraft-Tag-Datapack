# This function gets triggered by a tagger who uses the clock powerup
function tag_main:random
function tag_main:random
function tag_main:random

scoreboard players operation set Rand = num Rand
scoreboard players set num Rand 0

execute if score set Rand matches 25..27 run function tag_main:winners

execute unless score set Rand matches 25..27 run scoreboard players add Timer gameTimer 600

clear @s clock[minecraft:custom_data={Floating:1b,Upgrade:0b}] 1

execute unless score set Rand matches 25..27 run tellraw @a "The Timer got added by 30 seconds"

advancement revoke @s only tag_main:clock_tagger