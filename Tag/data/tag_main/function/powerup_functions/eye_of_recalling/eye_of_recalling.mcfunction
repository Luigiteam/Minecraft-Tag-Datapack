execute unless score @s eyeTimer matches 1.. at @s run function tag_main:powerup_functions/eye_of_recalling/timer_pass

execute if score @s eyeTimer matches 1.. run tellraw @s "You can't use this yet"
execute at @s if entity @e[type=minecraft:eye_of_ender,sort=nearest,limit=1,distance=..3] if score @s eyeTimer matches 1.. run give @s ender_eye[minecraft:custom_data={Floating:1b,Upgrade:1b},minecraft:custom_name='[{"text":"Eye of Recalling","color":"green"}]',minecraft:lore=['[{"text":"This will teleport you to a random person,"}]','[{"text":"but then recalls you back after 5 seconds."}]'],minecraft:enchantment_glint_override=true,minecraft:food={nutrition:3,saturation:0,can_always_eat:true,eat_seconds:1000000}]
execute if score @s eyeTimer matches 1.. run kill @e[type=minecraft:eye_of_ender,sort=nearest,limit=1]

advancement revoke @s only tag_main:recalling_eye