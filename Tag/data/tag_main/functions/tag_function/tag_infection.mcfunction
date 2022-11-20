# This swaps the runner to a tagger
tag @s add tagger
tag @s remove runner

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=runner]

tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@a[tag=tagger]"}]}

bossbar set runnertimer name {"text": "The tagger is ", "extra": [{"selector":"@s"}]}

advancement revoke @s only tag_main:on_hurt

playsound block.note_block.pling player @a ~ ~ ~ 100 1.5