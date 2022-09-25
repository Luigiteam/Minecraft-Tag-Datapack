# When the runner gets hit by the tagger
execute if entity @s[advancements={tag_main:on_hurt=true}] run tag @s add freeze
execute if entity @s[advancements={tag_main:on_hurt=true}] run scoreboard players set @s timeFroze 900
execute if entity @s[advancements={tag_main:on_hurt=true}] run summon minecraft:marker ~ ~ ~ {Tags:["freezeCheck","new"]}
execute if entity @s[advancements={tag_main:on_hurt=true}] at @s run scoreboard players operation @e[tag=freezeCheck,tag=new,sort=nearest,limit=1] oid = @s oid
execute if entity @s[advancements={tag_main:on_hurt=true}] run tag @e[tag=new,type=minecraft:marker,sort=nearest,limit=1] remove new
execute if entity @s[advancements={tag_main:on_hurt=true}] at @s run playsound entity.player.hurt_freeze player @s ~ ~ ~ 100 0.1

# When the runner gets hit by another runner
execute if entity @s[advancements={tag_main:on_hurt_by_runner=true}] run tag @s remove freeze
execute if entity @s[advancements={tag_main:on_hurt_by_runner=true}] run scoreboard players set @s timeFroze -1
execute if entity @s[advancements={tag_main:on_hurt_by_runner=true}] as @e[tag=freezeCheck,type=marker] if score @s oid = @p oid run kill @s
execute if entity @s[advancements={tag_main:on_hurt_by_runner=true}] at @s run playsound entity.player.hurt_freeze player @s ~ ~ ~ 100 2

# Removes all advancements
advancement revoke @s only tag_main:on_hurt
advancement revoke @s only tag_main:on_hurt_by_runner