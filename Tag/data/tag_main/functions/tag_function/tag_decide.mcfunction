# Normal mode
execute if score gameMode Toggle matches 1 as @a[advancements={tag_main:on_hurt=true}] run function tag_main:tag_function/tag_swap

# Freeze mode
## Runner By Tagger
execute if score gameMode Toggle matches 2 as @a[advancements={tag_main:on_hurt=true}] run function tag_main:tag_function/tag_freeze

## Runner By Runner
execute if score gameMode Toggle matches 2 as @a[advancements={tag_main:on_hurt_by_runner=true},tag=runner] run function tag_main:tag_function/tag_freeze

# Reverse mode
execute if score gameMode Toggle matches 3 as @a[advancements={tag_main:on_hurt_by_runner=true}] run function tag_main:tag_function/tag_reverse

# Other
advancement revoke @a only tag_main:on_hurt
advancement revoke @a only tag_main:on_hurt_by_runner