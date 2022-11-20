execute if score State gameStart matches 1 run scoreboard players set settingSet optionsSelect -1
execute unless score settingSet optionsSelect matches -1 run scoreboard players set settingSet optionsSelect 0

execute if score settingSet optionsSelect matches 0 if score clock Toggle matches 1 run scoreboard players set settingSet optionsSelect 1
execute if score settingSet optionsSelect matches 1 if score clock Toggle matches 1 run tellraw @a [{"text": "The "},{"text": "Clock of Destiny ","color": "yellow"},{"text": "is disabled","color": "reset"}]
execute if score settingSet optionsSelect matches 1 if score clock Toggle matches 1 run scoreboard players set clock Toggle 0
execute if score settingSet optionsSelect matches 1 if score clock Toggle matches 0 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 1.0

execute if score settingSet optionsSelect matches 0 if score clock Toggle matches 0 run tellraw @a [{"text": "The "},{"text": "Clock of Destiny ","color": "yellow"},{"text": "is enabled","color": "reset"}]
execute if score settingSet optionsSelect matches 0 if score clock Toggle matches 0 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 2.0
execute if score settingSet optionsSelect matches 0 if score clock Toggle matches 0 run scoreboard players set clock Toggle 1

function tag_main:text_readouts/powerup_changeout