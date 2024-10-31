execute if entity @e[type=marker,tag=recall] run return run function tag_main:errors/recall_active

tag @s add recallPick

summon marker ~ ~ ~ {Tags:["recall"]}

tp @s @r[tag=!recallPick]

scoreboard players set @s eyeTimer 200

effect clear @s luck

playsound entity.enderman.teleport player @s ~ ~ ~ 50 1.0