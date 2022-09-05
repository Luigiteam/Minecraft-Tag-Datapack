# Normal mode
execute if score gameMode Toggle matches 1 as @a[advancements={tag_main:on_hurt=true}] run function tag_main:tag_function/tag_swap

execute if score gameMode Toggle matches 1 as @a[advancements={tag_main:on_hurt_by_runner=true}] run advancement revoke @s only tag_main:on_hurt_by_runner

# Freeze mode
## By Tagger
execute if score gameMode Toggle matches 2 as @a[advancements={tag_main:on_hurt=true}] run function tag_main:tag_function/tag_freeze

## By Runner
execute if score gameMode Toggle matches 2 as @a[advancements={tag_main:on_hurt_by_runner=true}] run function tag_main:tag_function/tag_freeze

# Reverse mode
## Tagger hit By Runner
execute if score gameMode Toggle matches 3 as @a[advancements={tag_main:on_hurt_by_runner=true},tag=tagger] run function tag_main:tag_function/tag_reverse

## Tagger hit by Tagger
execute if score gameMode Toggle matches 3 as @a[advancements={tag_main:on_hurt=true},tag=tagger] run advancement revoke @s only tag_main:on_hurt

## Runner hit by Tagger
execute if score gameMode Toggle matches 3 as @a[advancements={tag_main:on_hurt=true}] run advancement revoke @s only tag_main:on_hurt

## Runner hit by Runner
execute if score gameMode Toggle matches 3 as @a[advancements={tag_main:on_hurt_by_runner=true}] run advancement revoke @s only tag_main:on_hurt_by_runner

