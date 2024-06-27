# Normal mode
execute if score gameMode Toggle matches 1 if entity @s[advancements={tag_main:on_hurt=true},tag=runner] as @s at @s run function tag_main:tag_function/tag_swap

# Freeze mode

## Runner By Tagger
execute if score gameMode Toggle matches 2 if entity @s[advancements={tag_main:on_hurt=true},tag=runner] as @s at @s run function tag_main:tag_function/tag_freeze

## Runner By Runner
execute if score gameMode Toggle matches 2 if entity @s[advancements={tag_main:on_hurt_by_runner=true},tag=runner] as @s at @s run function tag_main:tag_function/tag_freeze

# Reverse mode
execute if score gameMode Toggle matches 3 if entity @s[advancements={tag_main:on_hurt_by_runner=true},tag=tagger] as @s at @s run function tag_main:tag_function/tag_reverse

# Infection mode
execute if score gameMode Toggle matches 4 if entity @s[advancements={tag_main:on_hurt=true},tag=runner] as @s at @s run function tag_main:tag_function/tag_infection

# Hide-and-Seek
execute if score gameMode Toggle matches 5 if entity @s[advancements={tag_main:on_hurt=true},tag=runner] as @s run function tag_main:tag_function/tag_seek

# Other
advancement revoke @s only tag_main:on_hurt
advancement revoke @s only tag_main:on_hurt_by_runner

scoreboard players set @a damageDelt 0