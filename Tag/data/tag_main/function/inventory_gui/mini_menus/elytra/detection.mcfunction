
execute if entity @s[nbt=!{Inventory:[{Slot:10b}]}] run function tag_main:inventory_gui/setting_functions/powerup_weights/increase_weight {type:"elytra"}
execute if entity @s[nbt=!{Inventory:[{Slot:18b}]}] run function tag_main:inventory_gui/setting_functions/powerup_weights/defaults {type:"elytra"}
execute if entity @s[nbt=!{Inventory:[{Slot:19b}]}] run scoreboard players set @s guiUpdate 1
execute if entity @s[nbt=!{Inventory:[{Slot:28b}]}] run function tag_main:inventory_gui/setting_functions/powerup_weights/decrease_weight {type:"elytra"}

execute if entity @s[nbt=!{Inventory:[{Slot:17b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_remove_tag {tag:"elytraSettings",pitch:0.5}