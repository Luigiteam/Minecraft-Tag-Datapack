# When the runner gets hit by the tagger
execute as @a[advancements={tag_main:on_hurt=true}] run tag @s add freeze
execute as @a[advancements={tag_main:on_hurt=true}] run scoreboard players set @s timeFroze 900
execute at @a[advancements={tag_main:on_hurt=true}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[freezeCheck]}
execute as @a[advancements={tag_main:on_hurt=true}] at @s run playsound block.conduit.deactivate player @s ~ ~ ~ 100 2

# When the runner gets hit by another runner
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] run tag @s remove freeze
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] run scoreboard players set @s timeFroze -1
execute at @a[advancements={tag_main:on_hurt_by_runner=true}] run kill @e[type=armor_stand,tag=freezeCheck,limit=1,sort=nearest]
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] at @s run playsound block.conduit.activate player @s ~ ~ ~ 100 2

# Removes all advancements
advancement revoke @s only tag_main:on_hurt
advancement revoke @s only tag_main:on_hurt_by_runner