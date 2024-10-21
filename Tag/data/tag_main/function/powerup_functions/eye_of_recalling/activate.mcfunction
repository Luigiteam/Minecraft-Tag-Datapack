execute if entity @e[type=marker,tag=recall] run return run function tag_main:errors/recall_active
execute if score @s eyeTimer matches 1.. run return run function tag_main:errors/eye_cooldown

tag @s add recallPick

summon marker ~ ~ ~ {Tags:["recall"]}

tp @s @r[tag=!recallPick]

scoreboard players set @s eyeTimer 200

advancement revoke @s only tag_main:recalling_eye

playsound entity.enderman.teleport player @s ~ ~ ~ 50 1.0