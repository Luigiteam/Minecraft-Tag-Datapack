$scoreboard players add $(type) powWeight 1

scoreboard players set temp powMax 0

scoreboard players set @s guiUpdate 1

function tag_main:weight_check

playsound block.note_block.basedrum player @s ~ ~ ~ 50 1.2