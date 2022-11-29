scoreboard players add maxHeight Numbers 10

execute if score maxHeight Numbers matches 151.. run tellraw @s "You cannot have the height any higher than 150 blocks"
execute if score maxHeight Numbers matches 151.. run scoreboard players set maxHeight Numbers 150

tellraw @a [{"text": "The max height is "},{"score":{"name": "maxHeight","objective": "Numbers"},"color": "aqua"},{"text": " Blocks high."}]
trigger textTrigger set 6