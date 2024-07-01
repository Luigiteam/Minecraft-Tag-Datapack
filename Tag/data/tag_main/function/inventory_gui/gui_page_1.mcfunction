clear @s *

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

execute store result storage timer Minutes int 0.00083335 run scoreboard players get Timer gameTimer
execute store result score minutes gameTimer run data get storage timer Minutes 1

execute if score temp gameTimer matches 1200.. run scoreboard players remove temp gameTimer 1200
execute if score temp gameTimer matches 1..1199 run scoreboard players set sec Toggle 1
execute if score temp gameTimer matches 0 run scoreboard players set sec Toggle 0

execute if score sec Toggle matches 0 run item modify entity @s container.22 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The time is currently ",italic:false,"color":"white"},{score:{name:"minutes",objective:"gameTimer"},"color":"light_purple"},{text:" Minutes"}]],mode:"replace_all"}
execute if score sec Toggle matches 1 run item modify entity @s container.22 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The time is currently ",italic:false,"color":"white"},{score:{name:"minutes",objective:"gameTimer"},"color":"light_purple"},{text:":30",color:"light_purple"}]],mode:"replace_all"}

item replace entity @s container.23 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decreases timer by 30 seconds","italic": false,"color": "red"}]'] 30
item replace entity @s container.24 with red_stained_glass_pane[minecraft:custom_data={Floating:1b,Kill:1b},minecraft:custom_name='[{"text":"Decreases timer by 1 minute","italic": false,"color": "red"}]'] 60

# Items for Teams
execute if score @s teamChoose matches 2 run item replace entity @s container.29 with leather_boots[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Runners!","color": "green"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is a runner,"}]','[{"text": "a tagger is chosen at random"}]'],minecraft:enchantment_glint_override=1b] 1
execute unless score @s teamChoose matches 2 run item replace entity @s container.29 with leather_boots[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Runners!","color": "green"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is a runner,"}]','[{"text": "a tagger is chosen at random"}]'],minecraft:enchantment_glint_override=0b] 1

execute if score @s teamChoose matches 1 run item replace entity @s container.31 with iron_sword[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Taggers!","color": "red"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is tagger,"}]','[{"text": "a runner is chosen at random"}]'],minecraft:enchantment_glint_override=1b] 1
execute unless score @s teamChoose matches 1 run item replace entity @s container.31 with iron_sword[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to join Taggers!","color": "red"}]',minecraft:lore=['[{"text": "Keep in mind that if everyone is tagger,"}]','[{"text": "a runner is chosen at random"}]'],minecraft:enchantment_glint_override=0b] 1

execute if score @s teamChoose matches -1 run item replace entity @s container.33 with ender_eye[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to be a spectator!","color": "yellow"}]',minecraft:enchantment_glint_override=1b] 1
execute unless score @s teamChoose matches -1 run item replace entity @s container.33 with ender_eye[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me to be a spectator!","color": "yellow"}]',minecraft:enchantment_glint_override=0b] 1

# Items for Page Changes

item replace entity @s container.27 with paper[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me for page 2"}]'] 2

item replace entity @s container.35 with paper[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me for page 2"}]'] 2