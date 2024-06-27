execute as @a at @s run item replace entity @s player.cursor with minecraft:air 1

execute as @s at @s if score @s guiState matches 0 run function tag_main:inventory_gui/gui_page_1
