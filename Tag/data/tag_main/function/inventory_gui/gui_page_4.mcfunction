clear @s *

execute if score kbStick Toggle matches 0 run item replace entity @s container.9 with minecraft:wooden_sword[minecraft:custom_name='{"text": "Knockback Stick"}',minecraft:item_model="minecraft:stick",minecraft:lore=['[{"text": "DISABLED","color": "red"}]','{"text": "Enable this powerup to edit the settings"}']]
execute if score kbStick Toggle matches 1 run item replace entity @s container.9 with minecraft:wooden_sword[minecraft:custom_name='{"text": "Knockback Stick","color": "red"}',minecraft:item_model="minecraft:stick",minecraft:enchantment_glint_override=true,minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings of the Knockback Stick"}']]

execute if score fangTrap Toggle matches 0 run item replace entity @s container.10 with minecraft:polar_bear_spawn_egg[minecraft:custom_name='{"text": "Fang Trap","color": "gold"}',minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enable this powerup to edit the settings"}']]
execute if score fangTrap Toggle matches 1 run item replace entity @s container.10 with minecraft:polar_bear_spawn_egg[minecraft:custom_name='{"text": "Fang Trap","color": "gold"}',minecraft:enchantment_glint_override=true,lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings of the Fang Trap"}']]

execute if score potionInvis Toggle matches 0 run item replace entity @s container.11 with minecraft:splash_potion[minecraft:custom_name='{"text": "Potion of Invisibility"}',potion_contents={custom_color:16777215},minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enabled This powerup to edit the settings"}']]
execute if score potionInvis Toggle matches 1 run item replace entity @s container.11 with minecraft:splash_potion[minecraft:custom_name='{"text": "Potion of Invisibility"}',potion_contents={custom_color:16777215},minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings for the"}','{"text": "Potion of Invisibility"}'],minecraft:enchantment_glint_override=true]

execute if score elytra Toggle matches 0 run item replace entity @s container.12 with minecraft:elytra[minecraft:custom_name='{"text": "Elytra of Soaring","color": "light_purple"}',minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enabled This powerup to edit the settings"}']]
execute if score elytra Toggle matches 1 run item replace entity @s container.12 with minecraft:elytra[minecraft:custom_name='{"text": "Elytra of Soaring","color": "light_purple"}',minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings for the"}','{"text": "Elytra of Soaring"}'],minecraft:enchantment_glint_override=true]

execute if score clock Toggle matches 0 run item replace entity @s container.13 with minecraft:clock[minecraft:custom_name='{"text": "Clock of Destiny","color": "yellow"}',minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enabled This powerup to edit the settings"}']]
execute if score clock Toggle matches 1 run item replace entity @s container.13 with minecraft:clock[minecraft:custom_name='{"text": "Clock of Destiny","color": "yellow"}',minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings of the Clock of Destiny"}'],minecraft:enchantment_glint_override=true]

execute if score snowball Toggle matches 0 run item replace entity @s container.14 with minecraft:snowball[minecraft:custom_name='{"text": "Snowball of Destruction","color": "aqua"}',minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enabled This powerup to edit the settings"}']]
execute if score snowball Toggle matches 1 run item replace entity @s container.14 with minecraft:snowball[minecraft:custom_name='{"text": "Snowball of Destruction","color": "aqua"}',minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings of the Snowball of Destruction"}'],minecraft:enchantment_glint_override=true]

execute if score eyeTeleport Toggle matches 0 run item replace entity @s container.15 with minecraft:ender_eye[minecraft:custom_name='{"text": "Eye of Teleportation","color": "green"}',minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enabled This powerup to edit the settings"}']]
execute if score eyeTeleport Toggle matches 1 run item replace entity @s container.15 with minecraft:ender_eye[minecraft:custom_name='{"text": "Eye of Teleportation","color": "green"}',minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings of the Eye of Teleportation"}'],minecraft:enchantment_glint_override=true]

execute if score punchBow Toggle matches 0 run item replace entity @s container.16 with minecraft:bow[minecraft:custom_name='{"text": "Punching Bow","color": "gray"}',minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enabled This powerup to edit the settings"}']]
execute if score punchBow Toggle matches 1 run item replace entity @s container.16 with minecraft:bow[minecraft:custom_name='{"text": "Punching Bow","color": "gray"}',minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings of the Punching Bow"}'],minecraft:enchantment_glint_override=true]
\
execute if score effectPowerup Toggle matches 0 run item replace entity @s container.17 with minecraft:potion[minecraft:custom_name='{"text": "Effect Powerups"}',minecraft:item_model="main:tag_base",minecraft:lore=['{"text": "DISABLED","color": "red"}','{"text": "Enabled This powerup to edit the settings"}']]
execute if score effectPowerup Toggle matches 1 run item replace entity @s container.17 with minecraft:potion[minecraft:custom_name='{"text": "Effect Powerups"}',minecraft:item_model="main:tag_base",minecraft:lore=['{"text": "ENABLED","color": "green"}','{"text": "Click this to edit the settings of Effect Powerups"}'],minecraft:enchantment_glint_override=true]

item replace entity @s container.0 with paper[minecraft:custom_data={Kill:1b},minecraft:custom_name='{"text": "Click me for page 1!"}',minecraft:lore=['{"text": "World Border Size"}','{"text": "Timer Length"}','{"text": "Teams"}']]
item replace entity @s container.1 with paper[minecraft:custom_data={Kill:1b},minecraft:custom_name='{"text": "Click me for page 2!"}',minecraft:lore=['{"text": "Game Modes"}','{"text": "Powerups"}','{"text": "Effects"}']] 2
item replace entity @s container.2 with paper[minecraft:custom_data={Kill:1b},minecraft:custom_name='{"text": "Click me for page 3"}',minecraft:lore=['{"text": "Tools"}','[{"text": "Height Settings"}]','[{"text": "Depth Settings"}]']] 3
item replace entity @s container.3 with map[minecraft:custom_data={Kill:1b},minecraft:custom_name='{"text": "You are currently on page 4!"}'] 4

scoreboard players set @s guiUpdate 0

