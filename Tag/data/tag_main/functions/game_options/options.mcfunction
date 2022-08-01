# 1 - changes the keepInventory gamerule
execute if score Selection optionsSelect matches 1 store result score num optionsSelect run gamerule keepInventory

execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 0 run gamerule keepInventory true
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 0 run tellraw @a "Keep Inventory is on"

execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 1 run gamerule keepInventory false
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 1 run tellraw @a "Keep Inventory is off"

# 2 - yDistance Toggle
execute if score Selection optionsSelect matches 2 store result score num optionsSelect run scoreboard players get yDistance Toggle

execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 0 run scoreboard players set yDistance Toggle 1
execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 0 run tellraw @a "yDistance is on"

execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 1 run scoreboard players set yDistance Toggle 0
execute if score Selection optionsSelect matches 2 if score num optionsSelect matches 1 run tellraw @a "yDistance is off"

# 3 - Powerup Toggle
execute if score Selection optionsSelect matches 3 store result score num optionsSelect run scoreboard players get PowerUps Toggle

execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 0 run scoreboard players set PowerUps Toggle 1
execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 0 run tellraw @a "Power-Ups are on"

execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 1 run scoreboard players set PowerUps Toggle 0
execute if score Selection optionsSelect matches 3 if score num optionsSelect matches 1 run tellraw @a "Power-Ups are off"