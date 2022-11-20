execute if score State gameStart matches 1 run scoreboard players set settingSet optionsSelect -1
execute unless score settingSet optionsSelect matches -1 run scoreboard players set settingSet optionsSelect 0

execute if score settingSet optionsSelect matches 0 if score punchBow Toggle matches 1 run scoreboard players set settingSet optionsSelect 1
execute if score settingSet optionsSelect matches 1 if score punchBow Toggle matches 1 run tellraw @a [{"text": "The "},{"text": "Punching Bow ","color": "red"},{"text": "is disabled","color": "reset"}]
execute if score settingSet optionsSelect matches 1 if score punchBow Toggle matches 1 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 1.0
execute if score settingSet optionsSelect matches 1 if score punchBow Toggle matches 1 run scoreboard players set punchBow Toggle 0

execute if score settingSet optionsSelect matches 0 if score punchBow Toggle matches 0 run tellraw @a [{"text": "The "},{"text": "Punching Bow ","color": "red"},{"text": "is enabled"}]
execute if score settingSet optionsSelect matches 0 if score punchBow Toggle matches 0 run playsound block.note_block.cow_bell ambient @s ~ ~ ~ 1 2.0
execute if score settingSet optionsSelect matches 0 if score punchBow Toggle matches 0 run scoreboard players set punchBow Toggle 1

function tag_main:text_readouts/powerup_changeout