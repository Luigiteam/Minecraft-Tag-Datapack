$scoreboard players remove $(type) powWeight 1

$execute if score $(type) powWeight matches ..0 run scoreboard players set $(type) powWeight 1

scoreboard players set temp powMax 0

scoreboard players set @s guiUpdate 1

function tag_main:weight_check

playsound block.note_block.bit player @s ~ ~ ~ 20 0.6