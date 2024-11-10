scoreboard players set @s teamChoose 0
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 0.8
tellraw @s "You will be on either team this round"
scoreboard players set @s guiUpdate 1