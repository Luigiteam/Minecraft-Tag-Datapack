execute as @s at @s if items entity @s player.cursor * run scoreboard players set @s guiUpdate 1
execute as @a at @s run item replace entity @s player.cursor with minecraft:air 1
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:filled_map"}]}] run stopsound @s * ui.cartography_table.take_result
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:filled_map"}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt={Inventory:[{Slot:2b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:100b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:102b}]}] run scoreboard players set @s guiUpdate 1

execute if entity @e[nbt={Item:{components:{"minecraft:custom_data":{Kill:1b}}}}] run scoreboard players set @a guiUpdate 1

execute as @s at @s if score @s guiState matches 1 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_1
execute as @s at @s if score @s guiState matches 1 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_1
execute as @s if score @s guiState matches 1 run function tag_main:inventory_gui/setting_functions/timer/clock_update

execute as @s at @s if score @s guiState matches 2 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_2
execute as @s at @s if score @s guiState matches 2 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_2