clear @s *

item replace entity @s container.17 with red_stained_glass_pane[minecraft:custom_data={Kill:1b},minecraft:custom_name='{"text":"Click me to go back!"}',minecraft:item_model="main:tag_back"]

item replace entity @s container.10 with green_stained_glass_pane[minecraft:custom_data={Kill:1b},minecraft:item_model="main:tag_plus",minecraft:custom_name='{"text":"Add Weight by 1","color": "green"}',minecraft:lore=['{"text": "This increases the chance of spawning in a round"}']] 1
item replace entity @s container.18 with gray_stained_glass_pane[minecraft:custom_data={Kill:1b},minecraft:item_model="main:tag_default",minecraft:custom_name='{"text":"Reset Weight to Default","color": "green"}',minecraft:lore=['{"text": "This resets the weight to 4"}']] 1
$item replace entity @s container.19 with splash_potion[lore=['[{"text": "Currently the weight is ","color":"white"},{"text":"$(potionInvis)","color":"dark_purple"}]'],minecraft:enchantment_glint_override=true,minecraft:custom_name='{"text":"Potion of Invisibility","color":"white"}',potion_contents={custom_color:16777215}] 1
item replace entity @s container.28 with red_stained_glass_pane[minecraft:custom_data={Kill:1b},minecraft:item_model="main:tag_minus",minecraft:custom_name='{"text": "Decrease Weight by 1","color": "red"}',minecraft:lore=['{"text": "This decreases the chances of spawning in a round"}']] 1

scoreboard players set @s guiUpdate 0