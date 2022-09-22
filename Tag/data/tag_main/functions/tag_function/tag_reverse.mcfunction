execute as @p[tag=runner,scores={damage=1..}] run tag @s add tagger
execute as @p[tag=runner,scores={damage=1..}] run tag @s remove runner

tag @s remove tagger
tag @s add runner

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=runner]

tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@a[tag=tagger]"}]}

bossbar set runnertimer name {"text": "The tagger is ", "extra": [{"selector":"@a[tag=tagger]"}]}

advancement revoke @a only tag_main:on_hurt_by_runner

playsound block.note_block.pling player @a ~ ~ ~ 100 1.5