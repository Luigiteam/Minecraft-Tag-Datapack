$scoreboard players remove worldBorderSize Numbers $(Amount)
playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 0.5
execute unless score worldBorderSize Numbers matches 50.. run scoreboard players set worldBorderSize Numbers 50
tellraw @a [{"italic":false,"text":"The World Border size is now "},{"score":{"name":"worldBorderSize","objective":"Numbers"},"color": "light_purple"},{"text":" blocks"}]

scoreboard players set @s guiUpdate 1