$scoreboard players add maxHeight Numbers $(amount)

$playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 $(pitch)

tellraw @a [{"text": "The max Height is "},{"score": {"name": "maxHeight","objective": "Numbers"},"color": "light_purple"},{"text": " Blocks."}]