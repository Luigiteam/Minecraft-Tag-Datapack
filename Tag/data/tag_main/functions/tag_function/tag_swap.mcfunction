# This swaps the tagger to a runner
execute as @p[tag=tagger,scores={damageDelt=1..}] run tag @s add runner
execute as @p[tag=tagger,scores={damageDelt=1..}] run tag @s remove tagger

# This swaps the runner to a tagger
tag @s add tagger
tag @s remove runner

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=runner]

tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@a[tag=tagger]"}]}

advancement revoke @a only tag_main:on_hurt

playsound block.note_block.pling player @a ~ ~ ~ 100 1.5