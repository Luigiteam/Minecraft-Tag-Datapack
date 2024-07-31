$scoreboard players add worldBorderSize Numbers $(Amount)
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 1.0
execute unless score worldBorderSize Numbers matches ..250 run scoreboard players set worldBorderSize Numbers 250
tellraw @a [{"italic":false,"text":"The World Border size is now "},{"score":{"name":"worldBorderSize","objective":"Numbers"},"color": "light_purple"},{"text": " blocks"}]

scoreboard players set @s guiUpdate 1