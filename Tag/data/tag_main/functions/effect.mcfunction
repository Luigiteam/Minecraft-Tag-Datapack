## Jump Boost
execute if score @s effectType matches 1 run effect give @s jump_boost 10 4 false

## Resistance
execute if score @s effectType matches 2 run effect give @s resistance 15 0 false

## Haste
execute if score @s effectType matches 3 run effect give @s haste 5 0 false

## Night Vision
execute if score @s effectType matches 4 run effect give @s night_vision 15 0 false

## Levetation
execute if score @s effectType matches 5 run effect give @s levitation 5 255 false

scoreboard players set @s effectTimer 0
tag @s remove noEffect