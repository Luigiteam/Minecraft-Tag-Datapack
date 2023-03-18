data modify entity @s Pos set from storage death Pos
execute as @e[tag=deathPos] run data modify entity @s Pos set from storage death Pos
scoreboard players set drop Rand 0
scoreboard players set num Rand 0
function tag_main:random
scoreboard players operation drop Rand = num Rand
execute at @s if score drop Rand matches 0..2 run summon item ~ ~1 ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{Floating:1b,display:{Name:'{"text":"Upgrade Module"}',Lore:['[{"text":"Drop this on a powerup to upgrade it"}]']},SkullOwner:{Id:[I;-1374341878,1114718937,-1530279877,-934795587],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVjMWMzZjdkMDljZTZjMGNiNDhlZDMwYjQ1OTZhNWMxNGZhZTc5ZGVmOGJmZDE0YTU5ZmMxOTM1NjAwYmM3YiJ9fX0="}]}}}}}
scoreboard players set num Rand 0
kill @s