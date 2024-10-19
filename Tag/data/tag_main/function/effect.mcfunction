## Jump Boost
execute if score @s effectType matches 1 run effect give @s jump_boost 7 2 false

## Slowness
execute if score @s effectType matches 2 at @s run effect give @a[distance=1..5] slowness 5 4 false

## Haste
execute if score @s effectType matches 3 run effect give @s haste 15 4 false
execute if score @s effectType matches 3 run effect give @s night_vision 15 0 false

## Strength
execute if score @s effectType matches 4 run effect give @s strength 5 1 false

## Levetation
execute if score @s effectType matches 5 run effect give @s levitation 5 2 false

scoreboard players set @s effectTimer 400
tag @s remove noEffect

playsound block.beacon.activate block @s ~ ~ ~ 100 2.0