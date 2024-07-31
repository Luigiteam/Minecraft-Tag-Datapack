function tag_main:random
function tag_main:random
function tag_main:random

scoreboard players operation set Rand = num Rand
scoreboard players set num Rand 0

execute store result score clockStorage Numbers run data get entity @s SelectedItem.components."minecraft:custom_data".Upgrade
scoreboard players set min Rand 25
scoreboard players operation min Rand -= clockStorage Numbers

execute store result score @s clockStorage run data get entity @s SelectedItem.components."minecraft:custom_data".Upgrade 1

scoreboard players set timeAdd Numbers 600
scoreboard players operation timeAdd Numbers *= @s clockStorage
scoreboard players add timeAdd Numbers 600

scoreboard players operation Timer gameTimer -= timeAdd Numbers

clear @s clock[minecraft:custom_name='{"text":"Additive Clock of Destiny","color":"yellow","italic":false}'] 1

execute store result storage math_holder Slot[0] double 1.0 run scoreboard players get timeAdd Numbers
execute store result storage math_holder Slot[0] double 0.05 run data get storage math_holder Slot[0] 1.0
execute store result score timeAdd Numbers run data get storage math_holder Slot[0] 1

tellraw @a [{"text":"The timer has lost "},{"score":{"name":"timeAdd","objective": "Numbers"}},{"text":" seconds"}]

data modify storage math_holder Slot[0] set value 0.0d

execute if score set Rand >= min Numbers if score set Rand matches ..128 run scoreboard players set Timer gameTimer 1

advancement revoke @s only tag_main:add_clock_runner
