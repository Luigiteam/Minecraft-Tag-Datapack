tag @s add exclude
tp @s @e[tag=!exclude,type=player,limit=1,sort=random]
kill @e[type=eye_of_ender,nbt={Item:{tag:{Floating:1b}}}]
clear @s ender_eye{Floating:1b} 1
tag @s remove exclude
advancement revoke @s only tag_main:eye_thrown