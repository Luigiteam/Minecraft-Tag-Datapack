#World Border Size Settings
execute as @s if entity @s[] run function tag_main:inventory_gui/setting_functions/timer/add
execute as @s if entity @s[] run function tag_main:inventory_gui/setting_functions/timer/add
execute as @s if entity @s[] run function tag_main:inventory_gui/setting_functions/timer/remove
execute as @s if entity @s[] run function tag_main:inventory_gui/setting_functions/timer/remove

execute as @s if entity @s[nbt=!{Inventory:[{Slot:9b,id:"minecraft:lime_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:10}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:10b,id:"minecraft:lime_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b,id:"minecraft:red_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b,id:"minecraft:red_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:10}

clear @s *

item replace entity @s container.9 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Increase Size By 10","italic": false,"color": "green"}]'] 10
item replace entity @s container.10 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Increase Size By 5","italic": false,"color": "green"}]'] 5

item replace entity @s container.11 with barrier[custom_data={Floating:1b},custom_name='{"text":"Barrier Size Settings","italic":false}']
item modify entity @s container.11 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The World Border size is currently ",italic:false,"color":"white"},{score:{name:"worldBorderSize",objective:"Numbers"},"color":"light_purple"},{text:" blocks"}]],mode:"replace_all"}

item replace entity @s container.12 with red_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Decrease Size By 5","italic": false,"color": "red"}]'] 5
item replace entity @s container.13 with red_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Decrease Size By 10","italic": false,"color": "red"}]'] 10


item replace entity @s container.18 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Increases timer by 1 minute","italic": false,"color": "green"}]'] 60
item replace entity @s container.19 with lime_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Increases timer by 30 seconds","italic": false,"color": "green"}]'] 30

item replace entity @s container.20 with clock[minecraft:custom_name='{"text":"Clock Settings"}']

item replace entity @s container.21 with red_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Decreases timer by 30 seconds","italic": false,"color": "red"}]'] 30
item replace entity @s container.22 with red_stained_glass_pane[minecraft:custom_data={Floating:1b},minecraft:custom_name='[{"text":"Decreases timer by 1 minute","italic": false,"color": "red"}]'] 60