execute as @s if entity @s[nbt=!{Inventory:[{Slot:27b,id:"minecraft:paper"}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1}