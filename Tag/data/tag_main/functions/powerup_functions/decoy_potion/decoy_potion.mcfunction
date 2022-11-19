tag @s add hidden

execute if entity @s[tag=runner] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["decoy","runner"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}],NoBasePlate:1b}
execute as @e[type=armor_stand,tag=decoy] unless score @s gameTimer matches 0.. run scoreboard players set @s gameTimer 0

effect clear @s luck