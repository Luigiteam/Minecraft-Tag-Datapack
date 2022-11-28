tag @s add exclude

summon marker ~ ~ ~ {Tags:[recall]}

execute as @e[type=marker,limit=1,sort=nearest,tag=recall] unless score @s oid matches 1.. run scoreboard players operation @s oid = @p[tag=exclude] oid

kill @e[type=minecraft:eye_of_ender,nbt={Item:{tag:{Floating:1b,Upgrade:1b}}},limit=1,sort=nearest]

execute if entity @s[tag=runner] run tp @s @e[limit=1,tag=!exclude]
execute if entity @s[tag=tagger] run tp @s @e[limit=1,tag=!exclude,tag=runner]

tag @s remove exclude

clear @s ender_eye{Floating:1b,Upgrade:1b} 1

scoreboard players set @s eyeTimer 201