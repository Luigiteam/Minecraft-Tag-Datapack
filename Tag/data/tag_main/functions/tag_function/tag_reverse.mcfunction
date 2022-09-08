tag @s remove tagger
tag @s add runner

execute at @s run tag @p[tag=runner,advancements={tag_main:runner_hit_check=true},limit=1] add tagger
execute at @s run tag @a[tag=runner,advancements={tag_main:runner_hit_check=true},limit=1] remove runner

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=runner]

execute as @a[tag=tagger] run tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@a[tag=switch]"}]}

bossbar set runnertimer name {"text": "The tagger is ", "extra": [{"selector":"@a[tag=switch]"}]}

advancement revoke @a only tag_main:on_hurt

playsound block.note_block.pling player @a ~ ~ ~ 100 1.5

tag @a[tag=switch] remove switch
