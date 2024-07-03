scoreboard players set settingSet optionsSelect 0

execute if score minDepth Toggle matches 1 run scoreboard players set settingSet optionsSelect 1
execute if score settingSet optionsSelect matches 1 if score minDepth Toggle matches 1 run scoreboard players set minDepth Toggle 0
execute if score settingSet optionsSelect matches 1 if score minDepth Toggle matches 0 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 1.0
execute if score settingSet optionsSelect matches 1 if score minDepth Toggle matches 0 run return 0

execute if score settingSet optionsSelect matches 0 if score minDepth Toggle matches 0 run scoreboard players set minDepth Toggle 1
execute if score settingSet optionsSelect matches 0 if score minDepth Toggle matches 1 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 2.0
execute if score settingSet optionsSelect matches 0 if score minDepth Toggle matches 1 run return 1