# Detection for Tools
execute as @s if entity @s[nbt=!{Inventory:[{Slot:9b}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:10b}]}] run function tag_main:inventory_gui/setting_functions/tools/change {type:0}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b}]}] run function tag_main:inventory_gui/setting_functions/tools/change {type:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b}]}] run function tag_main:inventory_gui/setting_functions/tools/change {type:2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b}]}] run function tag_main:inventory_gui/setting_functions/tools/change {type:3}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b}]}] run function tag_main:inventory_gui/setting_functions/tools/change {type:4}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b}]}] run function tag_main:inventory_gui/setting_functions/tools/change {type:5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:16b}]}] run function tag_main:inventory_gui/setting_functions/tools/change {type:6}

# Detection for Height
execute as @s if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run function tag_main:inventory_gui/setting_functions/world_height/add {amount:10,pitch:1.2f}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:21b}]}] run function tag_main:inventory_gui/setting_functions/world_height/add {amount:5,pitch:1.0f}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run function tag_main:inventory_gui/setting_functions/world_height/toggle

execute as @s if entity @s[nbt=!{Inventory:[{Slot:23b}]}] run function tag_main:inventory_gui/setting_functions/world_height/remove {amount:5,pitch:0.8}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run function tag_main:inventory_gui/setting_functions/world_height/remove {amount:10,pitch:0.6}

# Detection for Depth
execute as @s if entity @s[nbt=!{Inventory:[{Slot:29b}]}] run function tag_main:inventory_gui/setting_functions/world_depth/add {amount:10,pitch:1.2f}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:30b}]}] run function tag_main:inventory_gui/setting_functions/world_depth/add {amount:5,pitch:1.0f}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:31b}]}] run function tag_main:inventory_gui/setting_functions/world_depth/toggle

execute as @s if entity @s[nbt=!{Inventory:[{Slot:32b}]}] run function tag_main:inventory_gui/setting_functions/world_depth/remove {amount:5,pitch:0.8}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:33b}]}] run function tag_main:inventory_gui/setting_functions/world_depth/remove {amount:10,pitch:0.6}

# Detection for hotbar
execute as @s if entity @s[nbt=!{Inventory:[{Slot:0b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:1b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:2}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run function tag_main:start
execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run clear @a *