# This function gets triggered by a runner who uses the clock powerup

function tag_main:random
function tag_main:random
function tag_main:random

scoreboard players operation set Rand = num Rand
scoreboard players set num Rand 0

execute if score set Rand matches 25..27 run function tag_main:winners

execute unless score set Rand matches 25..27 run scoreboard players remove Timer gameTimer 600

clear @s clock{Floating:1b} 1

execute unless score set Rand matches 25..27 run tellraw @a "The Timer has loss 30 seconds"