$scoreboard players operation $(type) powWeight = $(type) Numbers

scoreboard players set temp powMax 0

scoreboard players set @s guiUpdate 1

function tag_main:weight_check

playsound block.note_block.bit player @s ~ ~ ~ 20 1.0