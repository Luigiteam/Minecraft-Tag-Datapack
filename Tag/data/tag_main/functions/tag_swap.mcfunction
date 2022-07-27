# This swaps the runner to a tagger
tag @a[tag=runner,advancements={tag_main:on_hurt=true}] add tagger
tag @a[tag=runner,tag=tagger,advancements={tag_main:on_hurt=true}] remove runner

# This swaps the tagger to a runner
tag @a[tag=tagger,advancements={tag_main:on_hurt=false}] add runner
tag @a[tag=tagger,tag=runner,advancements={tag_main:on_hurt=false}] remove tagger

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=!tagger]

execute as @a[tag=tagger] run tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@s"}]}

bossbar set runnertimer name {"text": "The tagger is ", "extra": [{"selector":"@s"}]}

advancement revoke @a only tag_main:on_hurt