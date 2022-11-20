## Jump Boost
execute if score @s effectType matches 1 run effect give @s jump_boost 7 2 false

## Resistance
execute if score @s effectType matches 2 run effect give @s resistance 5 4 false

## Haste
execute if score @s effectType matches 3 run effect give @s haste 10 2 false
execute if score @s effectType matches 3 run effect give @s night_vision 10 0 false

## Strength
execute if score @s effectType matches 4 run effect give @s strength 5 0 false

## Levetation
execute if score @s effectType matches 5 run effect give @s levitation 5 2 false

scoreboard players set @s effectTimer 400
tag @s remove noEffect

playsound block.beacon.activate block @s ~ ~ ~ 100 2.0