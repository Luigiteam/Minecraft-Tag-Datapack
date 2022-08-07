# This swaps the runner to a tagger
tag @a[tag=runner,advancements={tag_main:on_hurt=true}] add tagger
tag @a[tag=runner,advancements={tag_main:on_hurt=true}] remove runner

# This swaps the tagger to a runner
tag @a[tag=tagger,advancements={tag_main:on_hurt_from_tagger=true}] add runner
tag @a[tag=tagger,advancements={tag_main:on_hurt_from_tagger=true}] remove tagger

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=runner]

execute as @a[tag=tagger] run tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@s"}]}

advancement revoke @a only tag_main:on_hurt
advancement revoke @a only tag_main:on_hurt_from_tagger

execute as @a run playsound minecraft:block.note_block.pling player @s ~ ~ ~