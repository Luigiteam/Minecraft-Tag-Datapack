data modify entity @s Pos set from storage death Pos
execute as @e[tag=deathPos] run data modify entity @s Pos set from storage death Pos

execute at @s run summon item ~ ~1 ~ {Item:{id:"player_head",components:{"minecraft:custom_data":{Floating:1b},"minecraft:custom_name":'{"text":"Upgrade Module"}',"minecraft:lore":['[{"text":"Drop this on a powerup to upgrade it"}]'],"minecraft:profile":{id:[I;-1374341878,1114718937,-1530279877,-934795587],properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVjMWMzZjdkMDljZTZjMGNiNDhlZDMwYjQ1OTZhNWMxNGZhZTc5ZGVmOGJmZDE0YTU5ZmMxOTM1NjAwYmM3YiJ9fX0=",name:"textures"}]}}}}
scoreboard players set drop Rand 0
kill @s