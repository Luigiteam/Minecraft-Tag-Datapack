scoreboard players add worldBorderSize Numbers 5

execute if score worldBorderSize Numbers matches 201.. run tellraw @s {"text": "You cannot have the world border bigger than 200 blocks...","color": "#cd2323"}
execute if score worldBorderSize Numbers matches 201.. run scoreboard players set worldBorderSize Numbers 200

tellraw @s ["",{"text": "\n"},{"text":"------","color":"aqua"},{"text":"\nThese settings add or subtract the size of the world border. The border can only be sized inbetween 60-200 Blocks.\n\n"},{"text":"[+10 Blocks]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_border_settings/10b_plus"}},{"text":" "},{"text":"[+5 Blocks]","color":"aqua","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_border_settings/5b_plus"}},{"text":"\n\n"},{"text":"[-10 Blocks]","color":"red","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_border_settings/10b_minus"}},{"text":" "},{"text":"[-5 Blocks]","color":"red","clickEvent":{"action":"run_command","value":"/function tag_main:sign_functions/world_border_settings/5b_minus"}}]
