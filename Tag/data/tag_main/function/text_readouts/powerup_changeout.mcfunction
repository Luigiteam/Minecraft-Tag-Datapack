tellraw @s {"text": "------","color": "red"}

## Knockback Stick
execute as @s if score kbStick Toggle matches 1 run tellraw @s ["",{"text": "1."},{"text":" Knockback Stick ","color":"red"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/kb_stick"}}]
execute as @s if score kbStick Toggle matches 0 run tellraw @s ["",{"text": "1."},{"text":" Knockback Stick ","color":"red"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/kb_stick"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

## Clamp Trap
execute as @s if score clampTrap Toggle matches 1 run tellraw @s ["",{"text": "2."},{"text":" Clamp Trap ","color":"gold"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/clamp_trap"}}]
execute as @s if score clampTrap Toggle matches 0 run tellraw @s ["",{"text": "2."},{"text":" Clamp Trap ","color":"gold"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/clamp_trap"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

## Potion of Invisibility
execute as @s if score potionInvis Toggle matches 1 run tellraw @s ["",{"text": "3."},{"text":" Potion of Invisibility ","color":"white"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/potion_invis"}}]
execute as @s if score potionInvis Toggle matches 0 run tellraw @s ["",{"text": "3."},{"text":" Potion of Invisibility ","color":"white"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/potion_invis"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

## Elytra of Soaring
execute as @s if score elytra Toggle matches 1 run tellraw @s ["",{"text": "4."},{"text":" Elytra of Soaring ","color":"light_purple"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/elytra"}}]
execute as @s if score elytra Toggle matches 0 run tellraw @s ["",{"text": "4."},{"text":" Elytra of Soaring ","color":"light_purple"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/elytra"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

## Clock of Destiny
execute as @s if score clock Toggle matches 1 run tellraw @s ["",{"text": "5."},{"text":" Clock of Detiny ","color":"yellow"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/clock"}}]
execute as @s if score clock Toggle matches 0 run tellraw @s ["",{"text": "5."},{"text":" Clock of Detiny ","color":"yellow"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/clock"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

## Snowball of Destruction
execute as @s if score snowball Toggle matches 1 run tellraw @s ["",{"text": "6."},{"text":" Snowball of Destruction ","color":"aqua"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/snowball"}}]
execute as @s if score snowball Toggle matches 0 run tellraw @s ["",{"text": "6."},{"text":" Snowball of Destruction ","color":"aqua"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/snowball"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

## Eye of Teleportation
execute as @s if score eyeTeleport Toggle matches 1 run tellraw @s ["",{"text": "7."},{"text":" Eye of Teleportation ","color":"green"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/eye_teleport"}}]
execute as @s if score eyeTeleport Toggle matches 0 run tellraw @s ["",{"text": "7."},{"text":" Eye of Teleportation ","color":"green"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/eye_teleport"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

## Punching Bow
execute as @s if score punchBow Toggle matches 1 run tellraw @s ["",{"text": "8."},{"text":" Punching Bow ","color":"gray"},{"text":": ","color":"white"},{"text":"[Enable]","color":"green"},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/punch_bow"}}]
execute as @s if score punchBow Toggle matches 0 run tellraw @s ["",{"text": "8."},{"text":" Punching Bow ","color":"gray"},{"text":": ","color":"white"},{"text":"[Enable]","color":"gray","clickEvent":{"action":"run_command","value":"/function tag_main:text_readouts/powerup_changeout/punch_bow"}},{"text":" \u0020","color":"white"},{"text":"[Disable]","color":"red"}]

##
tellraw @s {"text": "------","color": "red"}

execute if score kbStick Toggle matches 1 run scoreboard players set allDisabled Toggle 0
execute if score clampTrap Toggle matches 1 run scoreboard players set allDisabled Toggle 0
execute if score potionInvis Toggle matches 1 run scoreboard players set allDisabled Toggle 0
execute if score elytra Toggle matches 1 run scoreboard players set allDisabled Toggle 0
execute if score clock Toggle matches 1 run scoreboard players set allDisabled Toggle 0
execute if score snowball Toggle matches 1 run scoreboard players set allDisabled Toggle 0
execute if score eyeTeleport Toggle matches 1 run scoreboard players set allDisabled Toggle 0
execute if score punchBow Toggle matches 1 run scoreboard players set allDisabled Toggle 0

execute if score kbStick Toggle matches 0 if score clampTrap Toggle matches 0 if score potionInvis Toggle matches 0 if score elytra Toggle matches 0 if score clock Toggle matches 0 if score snowball Toggle matches 0 if score eyeTeleport Toggle matches 0 if score punchBow Toggle matches 0 run scoreboard players set allDisabled Toggle 1

scoreboard players set @s textTrigger 0