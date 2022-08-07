# 1 - changes the keepInventory gamerule
execute if score Selection optionsSelect matches 1 store result score num optionsSelect run gamerule keepInventory

execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 0 run gamerule keepInventory true
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 0 run tellraw @a "Keep Inventory is on"
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 0 at @e[tag=spawn] run setblock ~-3 ~2 ~-2 mangrove_button[facing=east]

execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 1 run gamerule keepInventory false
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 1 run tellraw @a "Keep Inventory is off"
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 1 at @e[tag=spawn] run setblock ~-3 ~2 ~-2 birch_button[facing=east]



# 2 - yDistance Toggle
execute if score Selection optionsSelect matches 2 store result score num optionsSelect run scoreboard players get yDistance Toggle

execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 0 run scoreboard players set yDistance Toggle 1
execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 0 run tellraw @a "yDistance is on"
execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 0 at @e[tag=spawn] run setblock ~-2 ~2 ~-3 mangrove_button[facing=south]

execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 1 run scoreboard players set yDistance Toggle 0
execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 1 run tellraw @a "yDistance is off"
execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 1 at @e[tag=spawn] run setblock ~-2 ~2 ~-3 birch_button[facing=south]


# 3 - Powerup Toggle
execute if score Selection optionsSelect matches 3 store result score num optionsSelect run scoreboard players get PowerUps Toggle

execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 0 run scoreboard players set PowerUps Toggle 1
execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 0 run tellraw @a "Power-Ups are on"
execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 0 at @e[tag=spawn] run setblock ~2 ~2 ~-3 mangrove_button[facing=south]

execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 1 run scoreboard players set PowerUps Toggle 0
execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 1 run tellraw @a "Power-Ups are off"
execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 1 at @e[tag=spawn] run setblock ~2 ~2 ~-3 birch_button[facing=south]
