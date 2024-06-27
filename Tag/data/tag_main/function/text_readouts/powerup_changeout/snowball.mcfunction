execute if score State gameStart matches 1 run scoreboard players set settingSet optionsSelect -1
execute unless score settingSet optionsSelect matches -1 run scoreboard players set settingSet optionsSelect 0

execute if score settingSet optionsSelect matches 0 if score snowball Toggle matches 1 run scoreboard players set settingSet optionsSelect 1
execute if score settingSet optionsSelect matches 1 if score snowball Toggle matches 1 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 1.0
execute if score settingSet optionsSelect matches 1 if score snowball Toggle matches 1 run tellraw @a [{"text": "The "},{"text": "Snowball of Destruction ","color": "aqua"},{"text": "is disabled","color": "white"}]
execute if score settingSet optionsSelect matches 1 if score snowball Toggle matches 1 run scoreboard players set snowball Toggle 0

execute if score settingSet optionsSelect matches 0 if score snowball Toggle matches 0 run tellraw @a [{"text": "The "},{"text": "Snowball of Destruction ","color": "aqua"},{"text": "is enabled","color": "white"}]
execute if score settingSet optionsSelect matches 0 if score snowball Toggle matches 0 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 2.0
execute if score settingSet optionsSelect matches 0 if score snowball Toggle matches 0 run scoreboard players set snowball Toggle 1

function tag_main:text_readouts/powerup_changeout