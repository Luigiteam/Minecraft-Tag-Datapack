$scoreboard players set Tools Toggle $(type)

execute if score Tools Toggle matches 0 run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 50 0.6
execute if score Tools Toggle matches 1 run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 50 0.8
execute if score Tools Toggle matches 2 run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 50 1.0
execute if score Tools Toggle matches 3 run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 50 1.2
execute if score Tools Toggle matches 4 run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 50 1.4
execute if score Tools Toggle matches 5 run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 50 1.6
execute if score Tools Toggle matches 6 run playsound minecraft:block.note_block.guitar ambient @s ~ ~ ~ 50 1.8

execute if score Tools Toggle matches 0 run tellraw @a {"text": "No Tools"}
execute if score Tools Toggle matches 1 run tellraw @a {"text": "Everyone will get Wooden Tools"}
execute if score Tools Toggle matches 2 run tellraw @a {"text": "Everyone will get Stone Tools"}
execute if score Tools Toggle matches 3 run tellraw @a {"text": "Everyone will get Golden Tools"}
execute if score Tools Toggle matches 4 run tellraw @a {"text": "Everyone will get Iron Tools"}
execute if score Tools Toggle matches 5 run tellraw @a {"text": "Everyone will get Diamond Tools"}
execute if score Tools Toggle matches 6 run tellraw @a {"text": "Everyone will get Netherite Tools"}