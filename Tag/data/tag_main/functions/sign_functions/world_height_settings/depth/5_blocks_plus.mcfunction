scoreboard players add minDepth Numbers 5

execute if score minDepth Numbers matches 31.. run tellraw @s "You cannot have the depth any higher than 30 blocks"
execute if score minDepth Numbers matches 31.. run scoreboard players set minDepth Numbers 30

tellraw @a [{"text": "The max depth is "},{"score":{"name": "minDepth","objective": "Numbers"},"color": "aqua"},{"text": " Blocks high."}]
trigger textTrigger set 6