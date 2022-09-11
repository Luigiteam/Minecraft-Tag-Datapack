# Normal mode
execute if score gameMode Toggle matches 1 as @a[advancements={tag_main:on_hurt=true}] run function tag_main:tag_function/tag_swap

# Freeze mode
## By Tagger
execute if score gameMode Toggle matches 2 as @a[advancements={tag_main:on_hurt=true}] run function tag_main:tag_function/tag_freeze

## By Runner
execute if score gameMode Toggle matches 2 as @a[advancements={tag_main:on_hurt_by_runner=true},tag=runner] run function tag_main:tag_function/tag_freeze

# Reverse mode
## Tagger hit By Runner
execute if score gameMode Toggle matches 3 as @a[advancements={tag_main:on_hurt_by_runner=true},tag=tagger] run function tag_main:tag_function/tag_reverse

# Other
advancement revoke @a only tag_main:on_hurt
advancement revoke @a only tag_main:on_hurt

advancement revoke @a only tag_main:runner_hit_check
advancement revoke @a only tag_main:tagger_hit_check