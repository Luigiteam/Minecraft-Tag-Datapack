execute if items entity @s player.cursor * run scoreboard players set @s guiUpdate 1
execute as @a at @s run item replace entity @s player.cursor with minecraft:air 1
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:filled_map"}]}] run stopsound @s * ui.cartography_table.take_result
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:filled_map"}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:0b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt=!{Inventory:[{Slot:1b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt=!{Inventory:[{Slot:2b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:3b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:4b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:5b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:6b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:7b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:100b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:102b}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt={Inventory:[{Slot:9b}]}] if score @s guiState matches 1 run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:9b}]}] if score @s guiState matches 2 run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt={Inventory:[{Slot:9b}]}] if score @s guiState matches 2 run scoreboard players set @s guiUpdate 1

execute if entity @e[nbt={Item:{components:{"minecraft:custom_data":{Kill:1b}}}},type=item] run scoreboard players set @a guiUpdate 1

execute if score State gameStart matches -1 run clear @s *

execute as @s if score @s guiState matches 1 run function tag_main:inventory_gui/setting_functions/timer/clock_update
execute if score @s playerJoin matches 50.. if score State gameStart matches 0 as @s at @s if score @s guiState matches 1 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_1
execute if score State gameStart matches 0 as @s at @s if score @s guiState matches 1 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_1

execute if score @s playerJoin matches 50.. if score State gameStart matches 0 as @s at @s if score @s guiState matches 2 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_2
execute if score State gameStart matches 0 as @s at @s if score @s guiState matches 2 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_2

execute if score @s playerJoin matches 50.. if score State gameStart matches 0 as @s at @s if score @s guiState matches 3 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_3
execute if score State gameStart matches 0 as @s at @s if score @s guiState matches 3 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_3