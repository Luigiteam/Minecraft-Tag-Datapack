$scoreboard players add worldBorderSize Numbers $(amount)
$playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 $(pitch)
execute unless score worldBorderSize Numbers matches ..300 run scoreboard players set worldBorderSize Numbers 300
tellraw @a [{"italic":false,"text":"The World Border size is now "},{"score":{"name":"worldBorderSize","objective":"Numbers"},"color": "light_purple"},{"text": " blocks"}]

scoreboard players set @s guiUpdate 1