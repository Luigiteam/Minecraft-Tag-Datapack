execute as @a at @s run item replace entity @s player.cursor with minecraft:air 1

execute as @s at @s if score @s guiState matches 1 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_1
execute as @s at @s if score @s guiState matches 1 run function tag_main:inventory_gui/gui_page_1

execute as @s at @s if score @s guiState matches 2 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_2
execute as @s at @s if score @s guiState matches 2 run function tag_main:inventory_gui/gui_page_2
