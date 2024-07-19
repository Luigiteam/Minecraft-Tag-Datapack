$scoreboard players set @s effectType $(effect)

execute if score @s effectType matches 1 run playsound block.note_block.bit ambient @s ~ ~ ~ 50 1.0
execute if score @s effectType matches 2 run playsound block.note_block.bit ambient @s ~ ~ ~ 50 1.2
execute if score @s effectType matches 3 run playsound block.note_block.bit ambient @s ~ ~ ~ 50 1.4
execute if score @s effectType matches 4 run playsound block.note_block.bit ambient @s ~ ~ ~ 50 1.6
execute if score @s effectType matches 5 run playsound block.note_block.bit ambient @s ~ ~ ~ 50 1.8

scoreboard players set @s guiUpdate 1