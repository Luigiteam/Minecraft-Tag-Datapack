tag @s add exclude

summon marker ~ ~ ~ {Tags:[recall]}

execute as @e[type=marker,limit=1,sort=nearest,tag=recall] unless score @s oid matches 1.. run scoreboard players operation @s oid = @p[tag=exclude] oid

kill @e[type=minecraft:eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{Floating:1b}}}},limit=1,sort=nearest]

tp @s @r[limit=1,tag=!exclude,sort=random]

tag @s remove exclude

clear @s ender_eye[minecraft:custom_data={Floating:1b,Upgrade:1b}] 1

scoreboard players set @s eyeTimer 201