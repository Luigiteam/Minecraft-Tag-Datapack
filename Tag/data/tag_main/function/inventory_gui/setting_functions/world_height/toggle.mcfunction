scoreboard players set settingSet optionsSelect 0

scoreboard players set @s guiUpdate 1

execute if score maxHeight Toggle matches 1 run scoreboard players set settingSet optionsSelect 1
execute if score settingSet optionsSelect matches 1 if score maxHeight Toggle matches 1 run scoreboard players set maxHeight Toggle 0
execute if score settingSet optionsSelect matches 1 if score maxHeight Toggle matches 0 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 1.0
execute if score settingSet optionsSelect matches 1 if score maxHeight Toggle matches 0 run return 0

execute if score settingSet optionsSelect matches 0 if score maxHeight Toggle matches 0 run scoreboard players set maxHeight Toggle 1
execute if score settingSet optionsSelect matches 0 if score maxHeight Toggle matches 1 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 2.0
execute if score settingSet optionsSelect matches 0 if score maxHeight Toggle matches 1 run return 1