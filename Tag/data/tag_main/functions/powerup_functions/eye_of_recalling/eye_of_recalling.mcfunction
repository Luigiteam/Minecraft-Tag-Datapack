execute unless score @s eyeTimer matches 1.. as @s at @s run function tag_main:powerup_functions/eye_of_recalling/timer_pass

execute if score @s eyeTimer matches 1.. run tellraw @s "You can't use this yet"

advancement revoke @s only tag_main:recalling_eye