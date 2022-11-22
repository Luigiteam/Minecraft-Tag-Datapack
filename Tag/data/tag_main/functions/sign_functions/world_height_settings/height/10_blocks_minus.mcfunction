scoreboard players remove maxHeight Numbers 10

execute if score maxHeight Numbers matches ..89 run tellraw @s "You cannot have the max height lower than 90 blocks"
execute if score maxHeight Numbers matches ..89 run scoreboard players set maxHeight Numbers 90

tellraw @a [{"text": "The max height is "},{"score":{"name": "maxHeight","objective": "Numbers"},"color": "aqua"},{"text": " Blocks high."}]
tellraw @s ["",{"text":"------","color":"gold"},{"text":"\nThese settings determine how high/low a player can go in a world. Height settings determine how high a person can go. Depth settings is how low a person can go. "},{"text":"The range for Height is from 100 to 200 blocks. ","color":"aqua"},{"text":"The range for Depth is from -30 to 30.","color":"green"},{"text":"\n\n"},{"text":"Height: ","color":"aqua"},{"text":"[+10 Blocks]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/height/10_blocks_plus"}},{"text":" ","color":"aqua"},{"text":"[+5 Blocks]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/height/5_blocks_plus"}},{"text":" | ","color":"aqua"},{"text":"[-5 Blocks]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/height/5_blocks_minus"}},{"text":" ","color":"aqua"},{"text":"[-10 Blocks]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/height/10_blocks_minus"}},{"text":"\n\n"},{"text":"Depth: ","color":"green"},{"text":"[+10 Blocks]","color":"green","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/depth/10_blocks_plus"}},{"text":" ","color":"green"},{"text":"[+5 Blocks]","color":"green","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/depth/5_blocks_plus"}},{"text":" | ","color":"green"},{"text":"[-5 Blocks]","color":"green","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/depth/5_blocks_minus"}},{"text":" ","color":"green"},{"text":"[-10 Blocks]","color":"green","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_height_settings/depth/10_blocks_minus"}}]