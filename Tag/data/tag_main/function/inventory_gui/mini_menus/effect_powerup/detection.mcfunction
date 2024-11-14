
execute if entity @s[nbt=!{Inventory:[{Slot:10b}]}] run function tag_main:inventory_gui/setting_functions/powerup_weights/increase_weight {type:"effectPowerup"}
execute if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run function tag_main:inventory_gui/setting_functions/powerup_weights/defaults {type:"effectPowerup"}
execute if entity @s[nbt=!{Inventory:[{Slot:28b}]}] run function tag_main:inventory_gui/setting_functions/powerup_weights/decrease_weight {type:"effectPowerup"}

execute if entity @s[nbt=!{Inventory:[{Slot:17b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_remove_tag {tag:"effectPowerupSettings",pitch:0.5}