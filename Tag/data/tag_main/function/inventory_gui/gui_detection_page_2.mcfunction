# Detection for Gamemodes
execute as @s if entity @s[nbt=!{Inventory:[{Slot:10b}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:3}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:4}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b}]}] run function tag_main:inventory_gui/setting_functions/game_modes/change {mode:5}

# Detection for Powerup Toggle
execute as @s if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"kbStick"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"fangTrap"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:21b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"potionInvis"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"elytra"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:23b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"clock"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"snowball"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:25b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"eyeTeleport"}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:26b}]}] run function tag_main:inventory_gui/setting_functions/powerup_toggles/toggle {Type:"punchBow"}

# Detection for Effects
execute as @s if entity @s[nbt=!{Inventory:[{Slot:28b}]}] run function tag_main:inventory_gui/setting_functions/effect/toggle

execute as @s if entity @s[nbt=!{Inventory:[{Slot:29b}]}] run function tag_main:inventory_gui/setting_functions/effect/change {effect:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:30b}]}] run function tag_main:inventory_gui/setting_functions/effect/change {effect:2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:31b}]}] run function tag_main:inventory_gui/setting_functions/effect/change {effect:3}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:32b}]}] run function tag_main:inventory_gui/setting_functions/effect/change {effect:4}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:33b}]}] run function tag_main:inventory_gui/setting_functions/effect/change {effect:5}

# Detection for Hotbar
execute as @s if entity @s[nbt=!{Inventory:[{Slot:0b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:2b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:3}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run clear @a *
execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run function tag_main:start