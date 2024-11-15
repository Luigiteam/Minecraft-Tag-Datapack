$scoreboard players remove worldBorderSize Numbers $(amount)
$playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 $(pitch)
execute unless score worldBorderSize Numbers matches 100.. run scoreboard players set worldBorderSize Numbers 100
tellraw @a [{"italic":false,"text":"The World Border size is now "},{"score":{"name":"worldBorderSize","objective":"Numbers"},"color": "light_purple"},{"text":" blocks"}]

scoreboard players set @s guiUpdate 1