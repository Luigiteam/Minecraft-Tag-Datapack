$scoreboard players add maxHeight Numbers $(amount)

execute if score maxHeight Numbers matches 300.. run scoreboard players set maxHeight Numbers 300

$playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 $(pitch)

tellraw @a [{"text": "The max Height is "},{"score": {"name": "maxHeight","objective": "Numbers"},"color": "light_purple"},{"text": " Blocks."}]

scoreboard players set @s guiUpdate 1
