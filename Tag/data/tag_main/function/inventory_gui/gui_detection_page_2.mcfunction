# Detection for Gamemodes
execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:3}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:4}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:5}

#Detection for Powerup Toggle
execute as @s if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"kbStick"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"fangTrap"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:21b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"potionInvis"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"elytra"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:23b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"clock"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"snowball"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:25b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"eyeTeleport"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:26b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"punchBow"}

# Detection for Page Change
execute as @s if entity @s[nbt=!{Inventory:[{Slot:27b,id:"minecraft:paper",components:{"minecraft:custom_data":{Kill:1b}}}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:35b,id:"minecraft:paper",components:{"minecraft:custom_data":{Kill:1b}}}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1}