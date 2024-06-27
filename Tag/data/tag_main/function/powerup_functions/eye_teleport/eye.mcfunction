tellraw @a "hello"

execute if score @s eyeTimer matches 1.. run tellraw @s "You can't use this yet..."
execute if entity @e[type=eye_of_ender,limit=1,sort=nearest,distance=..3] if score @s eyeTimer matches 1.. run give @s ender_eye[minecraft:custom_data={Floating:1b,Upgrade:1b},minecraft:enchantment_glint_override=1b,minecraft:custom_name='[{"text":"Eye of Teleportation","italic":false,"color":"green"}]',minecraft:lore=['[{"text":"This Powerup allows you to tp to any","italic":false}]','[{"text":"person randomly","italic":false}]'],minecraft:food={nutrition:2,saturation:0.0,eat_seconds:1000000,can_always_eat:true}] 1

execute if score @s eyeTimer matches ..0 run tag @s add exclude
execute if score @s eyeTimer matches ..0 run tp @s @r[tag=!exclude,limit=1,sort=random]

kill @e[type=eye_of_ender,nbt={Item:{components:{"minecraft:custom_data":{Floating:1b}}}}]

execute if score @s eyeTimer matches ..0 run clear @s ender_eye[minecraft:custom_data={Floating:1b,Upgrade:0b}] 1

execute if score @s eyeTimer matches ..0 run tag @s remove exclude
execute if score @s eyeTimer matches ..0 run scoreboard players set @s eyeTimer 100

advancement revoke @s only tag_main:eye_thrown