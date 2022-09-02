# When the runner gets hit by the tagger
execute as @a[advancements={tag_main:on_hurt=true}] run tag @s add freeze
execute as @a[advancements={tag_main:on_hurt=true}] run scoreboard players set @s timeFroze 900
execute at @a[advancements={tag_main:on_hurt=true}] run summon area_effect_cloud ~ ~ ~ {Tags:["freezeCheck","new"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @a[advancements={tag_main:on_hurt=true}] at @s run scoreboard players operation @e[tag=freezeCheck,tag=new] oid = @s oid
execute at @a[advancements={tag_main:on_hurt=true}] run tag @e[tag=new,type=area_effect_cloud] remove new
execute as @a[advancements={tag_main:on_hurt=true}] at @s run playsound entity.player.hurt_freeze player @s ~ ~ ~ 100 0.1

# When the runner gets hit by another runner
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] run tag @s remove freeze
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] run scoreboard players set @s timeFroze -1
execute if entity @a[advancements={tag_main:on_hurt_by_runner=true}] as @e[tag=freezeCheck,type=area_effect_cloud] if score @s oid = @p oid run kill @s
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] run effect clear @s
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] at @s run playsound entity.player.hurt_freeze player @s ~ ~ ~ 100 2

# Removes all advancements
advancement revoke @s only tag_main:on_hurt
advancement revoke @s only tag_main:on_hurt_by_runner