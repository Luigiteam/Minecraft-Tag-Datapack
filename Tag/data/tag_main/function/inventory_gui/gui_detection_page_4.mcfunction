execute as @s if entity @s[nbt=!{Inventory:[{Slot:9b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"kbStickSettings",pitch:1.1}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:10b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"fangTrapSettings",pitch:1.2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"potionInvisSettings",pitch:1.3}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"elytraSettings",pitch:1.4}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"clockSettings",pitch:1.5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"snowballSettings",pitch:1.6}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"eyeTeleportSettings",pitch:1.7}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:16b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"punchBowSettings",pitch:1.8}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:17b}]}] run function tag_main:inventory_gui/mini_menus/menu_delay_add_tag {tag:"effectPowerupSettings",pitch:1.9}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:0b,id:"minecraft:paper",count:1}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:1,pitch:0.8}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:1b,id:"minecraft:paper",count:2}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:2,pitch:1.0}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:2b,id:"minecraft:paper",count:3}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:3,pitch:1.2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:3b,id:"minecraft:map",count:4}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run clear @a *
execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run function tag_main:start