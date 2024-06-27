#tag @s add hidden

execute if entity @s[tag=runner] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["decoy","runner"],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:custom_data":{Kill:1b}}},{id:"minecraft:leather_leggings",components:{"minecraft:custom_data":{Kill:1b}}},{id:"minecraft:leather_chestplate",components:{"minecraft:custom_data":{Kill:1b}}},{id:"minecraft:player_head",components:{"minecraft:custom_data":{Kill:1b}}}],NoBasePlate:1b,components:{custom_data:{Kill:1b}}}

execute if entity @s[tag=tagger] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["decoy","tagger"],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:custom_data":{Kill:1b}}},{id:"minecraft:leather_leggings",components:{"minecraft:custom_data":{Kill:1b}}},{id:"minecraft:leather_chestplate",components:{"minecraft:custom_data":{Kill:1b}}},{id:"minecraft:player_head",components:{"minecraft:custom_data":{Kill:1b}}}],NoBasePlate:1b,components:{custom_data:{Kill:1b}}}

execute as @e[type=armor_stand,tag=decoy] unless score @s gameTimer matches 0.. run scoreboard players set @s gameTimer 0

team join runner @e[type=armor_stand,tag=decoy,tag=runner,team=]
team join taggers @e[type=armor_stand,tag=decoy,tag=tagger,team=]

effect clear @s luck
effect give @s speed 15 2 true