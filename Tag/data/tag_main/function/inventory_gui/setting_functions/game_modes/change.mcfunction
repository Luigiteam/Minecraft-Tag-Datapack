$scoreboard players set gameMode Toggle $(mode)

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 1.0

execute if score gameMode Toggle matches 1 run tellraw @a [{"text": "The Current Gamemode is now "},{"text": "Normal Tag","color": "white"}]
execute if score gameMode Toggle matches 2 run tellraw @a [{"text": "The Current Gamemode is now "},{"text": "Freeze Tag", "color": "aqua"}]
execute if score gameMode Toggle matches 3 run tellraw @a [{"text": "The Current Gamemode is now "},{"text": "Reverse Tag","color": "green"}]
execute if score gameMode Toggle matches 4 run tellraw @a [{"text": "The Current Gamemode is now "},{"text": "Infection Tag","color": "red"}]
execute if score gameMode Toggle matches 5 run tellraw @a [{"text": "The Current Gamemode is now "},{"text": "Hide and Seek","color": "gray"}]