scoreboard players remove maxHeight Numbers 10

execute if score maxHeight Numbers matches ..99 run tellraw @s "You cannot have the max height lower than 100 blocks"
execute if score maxHeight Numbers matches ..99 run scoreboard players set maxHeight Numbers 100

tellraw @a [{"text": "The max height is "},{"score":{"name": "maxHeight","objective": "Numbers"},"color": "aqua"},{"text": " Blocks high."}]
trigger textTrigger set 6