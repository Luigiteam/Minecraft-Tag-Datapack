clear @s *
# Items for pages
item replace entity @s hotbar.0 with minecraft:paper[minecraft:custom_data={Kill:1b}, minecraft:custom_name='{"text": "Click me for page 1"}',minecraft:lore=['{"text": "World Border Size"}','{"text": "Timer Length"}','{"text": "Teams"}']]
item replace entity @s hotbar.1 with minecraft:paper[minecraft:custom_data={Kill:1b}, minecraft:custom_name='{"text": "Click me for page 2!"}',minecraft:lore=['{"text": "Game Modes"}','{"text": "Powerups"}','{"text": "Effects"}']] 2
item replace entity @s hotbar.2 with minecraft:map[minecraft:custom_data={Kill:1b}, minecraft:custom_name='{"text": "You are currently on page 3!"}'] 3

# Items for tools
item replace entity @s container.9 with map[minecraft:custom_name='{"text": "Tools Settings"}',minecraft:lore=['{"text": "these options change what level of tools"}','{"text": "you get from the start of the round"}','{"text": "You start with a sword, axe, and a pickaxe"}']]

execute if score Tools Toggle matches 0 run item replace entity @s container.10 with minecraft:gray_dye[minecraft:enchantment_glint_override=1b,minecraft:custom_name='{"text": "No tools"}',minecraft:custom_data={Kill:1b}]
execute unless score Tools Toggle matches 0 run item replace entity @s container.10 with minecraft:gray_dye[minecraft:custom_name='{"text": "No tools"}',minecraft:custom_data={Kill:1b}]

execute if score Tools Toggle matches 1 run item replace entity @s container.11 with minecraft:wooden_pickaxe[minecraft:enchantment_glint_override=1b,minecraft:custom_name='{"text": "Wooden Tools"}',minecraft:custom_data={Kill:1b}]
execute unless score Tools Toggle matches 1 run item replace entity @s container.11 with minecraft:wooden_pickaxe[minecraft:custom_name='{"text": "Wooden Tools"}',minecraft:custom_data={Kill:1b}]

execute if score Tools Toggle matches 2 run item replace entity @s container.12 with minecraft:stone_pickaxe[minecraft:enchantment_glint_override=1b,minecraft:custom_name='{"text": "Stone Tools"}',minecraft:custom_data={Kill:1b}]
execute unless score Tools Toggle matches 2 run item replace entity @s container.12 with minecraft:stone_pickaxe[minecraft:custom_name='{"text": "Stone Tools"}',minecraft:custom_data={Kill:1b}]

execute if score Tools Toggle matches 3 run item replace entity @s container.13 with minecraft:golden_pickaxe[minecraft:enchantment_glint_override=1b,minecraft:custom_name='{"text": "Golden Tools"}',minecraft:custom_data={Kill:1b}]
execute unless score Tools Toggle matches 3 run item replace entity @s container.13 with minecraft:golden_pickaxe[minecraft:custom_name='{"text": "Golden Tools"}',minecraft:custom_data={Kill:1b}]

execute if score Tools Toggle matches 4 run item replace entity @s container.14 with minecraft:iron_pickaxe[minecraft:enchantment_glint_override=1b,minecraft:custom_name='{"text": "Iron Tools"}',minecraft:custom_data={Kill:1b}]
execute unless score Tools Toggle matches 4 run item replace entity @s container.14 with minecraft:iron_pickaxe[minecraft:custom_name='{"text": "Iron Tools"}',minecraft:custom_data={Kill:1b}]

execute if score Tools Toggle matches 5 run item replace entity @s container.15 with minecraft:diamond_pickaxe[minecraft:enchantment_glint_override=1b,minecraft:custom_name='{"text": "Diamond Tools"}',minecraft:custom_data={Kill:1b}]
execute unless score Tools Toggle matches 5 run item replace entity @s container.15 with minecraft:diamond_pickaxe[minecraft:custom_name='{"text": "Diamond Tools"}',minecraft:custom_data={Kill:1b}]

execute if score Tools Toggle matches 6 run item replace entity @s container.16 with minecraft:netherite_ingot[minecraft:enchantment_glint_override=1b,minecraft:custom_name='{"text": "Netherite Tools"}',minecraft:custom_data={Kill:1b}]
execute unless score Tools Toggle matches 6 run item replace entity @s container.16 with minecraft:netherite_ingot[minecraft:custom_name='{"text": "Netherite Tools"}',minecraft:custom_data={Kill:1b}]

# World Hight Settings
item replace entity @s container.20 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increase Height By 10","italic": false,"color": "green"}]'] 10
item replace entity @s container.21 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increase Height By 5","italic": false,"color": "green"}]'] 5

execute if score maxHeight Toggle matches 1 run item replace entity @s container.22 with feather[custom_data={Floating:1b,Kill:1b},custom_name='{"text":"World Height Settings","italic":false,"color": "aqua"}',minecraft:enchantment_glint_override=1b]
execute if score maxHeight Toggle matches 0 run item replace entity @s container.22 with feather[custom_data={Floating:1b,Kill:1b},custom_name='{"text":"World Height Settings","italic":false}']
item modify entity @s container.22 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The Max World Height is currently ",italic:false,"color":"white"},{score:{name:"maxHeight",objective:"Numbers"},"color":"light_purple"},{text:" blocks"}],[{text:"This forces players under the height limit."}],[{text:"Click the feather to enable/disable"}]],mode:"replace_all"}

item replace entity @s container.23 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decrease Height By 5","italic": false,"color": "red"}]'] 5
item replace entity @s container.24 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decrease Height By 10","italic": false,"color": "red"}]'] 10

# World Depth Settings
item replace entity @s container.20 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increase Height By 10","italic": false,"color": "green"}]'] 10
item replace entity @s container.21 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Increase Height By 5","italic": false,"color": "green"}]'] 5

execute if score maxHeight Toggle matches 1 run item replace entity @s container.22 with feather[custom_data={Floating:1b,Kill:1b},custom_name='{"text":"World Height Settings","italic":false,"color": "aqua"}',minecraft:enchantment_glint_override=1b]
execute if score maxHeight Toggle matches 0 run item replace entity @s container.22 with feather[custom_data={Floating:1b,Kill:1b},custom_name='{"text":"World Height Settings","italic":false}']
item modify entity @s container.22 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The Max World Height is currently ",italic:false,"color":"white"},{score:{name:"maxHeight",objective:"Numbers"},"color":"light_purple"},{text:" blocks"}],[{text:"This forces players under the height limit."}],[{text:"Click the feather to enable/disable"}]],mode:"replace_all"}

item replace entity @s container.23 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decrease Height By 5","italic": false,"color": "red"}]'] 5
item replace entity @s container.24 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decrease Height By 10","italic": false,"color": "red"}]'] 10

scoreboard players set @s guiUpdate 0

