# Detection for Gamemodes
execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b,id:"minecraft:cobblestone"}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:3}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:4}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:5}
# Detection for Page Change
execute as @s if entity @s[nbt=!{Inventory:[{Slot:27b,id:"minecraft:paper",components:{"minecraft:custom_data":{Kill:1b}}}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:35b,id:"minecraft:paper",components:{"minecraft:custom_data":{Kill:1b}}}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1}