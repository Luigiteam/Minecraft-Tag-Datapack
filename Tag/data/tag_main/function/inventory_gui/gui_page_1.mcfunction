clear @s *
scoreboard players set @s guiUpdate 0

# Item
item replace entity @s hotbar.0 with minecraft:map[minecraft:custom_data={Kill:1b}, minecraft:custom_name='{"text": "You are currently on page 1"}']
item replace entity @s hotbar.1 with minecraft:paper[minecraft:custom_data={Kill:1b}, minecraft:custom_name='{"text": "Click me for page 2!"}',minecraft:lore=['{"text": "Game Modes"}','{"text": "Powerups"}','{"text": "Effects"}']] 2
item replace entity @s hotbar.2 with minecraft:paper[minecraft:custom_data={Kill:1b}, minecraft:custom_name='{"text": "Click me for page 3"}',minecraft:lore=['{"text": "Tools"}']] 3

# Items for World Border
item replace entity @s container.11 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increase Size By 10","italic": false,"color": "green"}]'] 10
item replace entity @s container.12 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increase Size By 5","italic": false,"color": "green"}]'] 5

item replace entity @s container.13 with barrier[custom_data={Floating:1b,Kill:1b},custom_name='{"text":"Barrier Size Settings","italic":false}']
item modify entity @s container.13 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The World Border size is currently ",italic:false,"color":"white"},{score:{name:"worldBorderSize",objective:"Numbers"},"color":"light_purple"},{text:" blocks"}]],mode:"replace_all"}

item replace entity @s container.14 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decrease Size By 5","italic": false,"color": "red"}]'] 5
item replace entity @s container.15 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decrease Size By 10","italic": false,"color": "red"}]'] 10

# Items for Clock
item replace entity @s container.20 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increases timer by 1 minute","italic": false,"color": "green"}]'] 60
item replace entity @s container.21 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increases timer by 30 seconds","italic": false,"color": "green"}]'] 30

item replace entity @s container.22 with clock[minecraft:custom_name='{"text":"Clock Settings","color": "yellow","italic": false}',minecraft:custom_data={Kill:1b}]

item replace entity @s container.23 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decreases timer by 30 seconds","italic": false,"color": "red"}]'] 30
item replace entity @s container.24 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decreases timer by 1 minute","italic": false,"color": "red"}]'] 60

# Items for Teams
execute if score @s teamChoose matches 0 run item replace entity @s container.28 with minecraft:ominous_bottle[minecraft:custom_name='{"text": "Click me to join a random team!"}',minecraft:enchantment_glint_override=1b]
execute unless score @s teamChoose matches 0 run item replace entity @s container.28 with minecraft:ominous_bottle[minecraft:custom_name='{"text": "Click me to join a random team!"}']

execute if score @s teamChoose matches 2 run item replace entity @s container.30 with leather_boots[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Runners!","color": "green"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is a runner,"}]','[{"text": "a tagger is chosen at random"}]'],minecraft:enchantment_glint_override=1b] 1
execute unless score @s teamChoose matches 2 run item replace entity @s container.30 with leather_boots[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Runners!","color": "green"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is a runner,"}]','[{"text": "a tagger is chosen at random"}]'],minecraft:enchantment_glint_override=0b] 1

execute if score @s teamChoose matches 1 run item replace entity @s container.32 with iron_sword[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Taggers!","color": "red"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is tagger,"}]','[{"text": "a runner is chosen at random"}]'],minecraft:enchantment_glint_override=1b] 1
execute unless score @s teamChoose matches 1 run item replace entity @s container.32 with iron_sword[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Taggers!","color": "red"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is tagger,"}]','[{"text": "a runner is chosen at random"}]'],minecraft:enchantment_glint_override=0b] 1

execute if score @s teamChoose matches -1 run item replace entity @s container.34 with ender_eye[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to be a spectator!","color": "yellow"}]',minecraft:enchantment_glint_override=1b] 1
execute unless score @s teamChoose matches -1 run item replace entity @s container.34 with ender_eye[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to be a spectator!","color": "yellow"}]',minecraft:enchantment_glint_override=0b] 1