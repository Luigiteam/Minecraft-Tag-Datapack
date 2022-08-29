execute if score @s eyeTimer matches 1.. run tellraw @s "You can't use this yet..."

execute if score @s eyeTimer matches ..0 run tag @s add exclude

execute if score @s eyeTimer matches ..0 run tp @s @e[tag=!exclude,type=player,limit=1,sort=random]
execute if score @s eyeTimer matches ..0 run kill @e[type=eye_of_ender,nbt={Item:{tag:{Floating:1b}}}]
execute if score @s eyeTimer matches ..0 run clear @s ender_eye{Floating:1b} 1
execute if score @s eyeTimer matches ..0 run tag @s remove exclude
execute if score @s eyeTimer matches ..0 run scoreboard players set @s eyeTimer 100

advancement revoke @s only tag_main:eye_thrown