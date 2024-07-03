$scoreboard players add minDepth Numbers $(amount)

execute if score minDepth Numbers matches 30.. run scoreboard players set minDepth Numbers 30

$playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 $(pitch)

tellraw @a [{"text": "The min Depth is "},{"score": {"name": "minDepth","objective": "Numbers"},"color": "light_purple"},{"text": " Blocks."}]