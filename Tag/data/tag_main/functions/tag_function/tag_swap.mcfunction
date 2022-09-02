# This swaps the runner to a tagger
tag @s add tagger
tag @s remove runner

# This swaps the tagger to a runner
tag @a[tag=tagger,advancements={tag_main:on_hurt=false},sort=nearest,limit=1] add runner
tag @a[tag=tagger,advancements={tag_main:on_hurt=false},sort=nearest,limit=1] remove tagger

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=runner]

execute as @a[tag=tagger] run tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@s"}]}

bossbar set runnertimer name {"text": "The tagger is ", "extra": [{"selector":"@s"}]}

advancement revoke @a only tag_main:on_hurt

playsound block.note_block.pling player @a ~ ~ ~ 100 1.5