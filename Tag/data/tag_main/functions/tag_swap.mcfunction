# This swaps the runner to a tagger
tag @a[tag=runner,advancements={tag_main:on_hurt=true}] add tagger
tag @a[tag=runner,advancements={tag_main:on_hurt=true}] remove runner

# This swaps the tagger to a runner
execute at @a[advancements={tag_main:on_hurt=true}] run tag @a[tag=tagger,advancements={tag_main:on_hurt=false},sort=nearest,limit=1,scores={taggerDamage=1..}] add temp

tag @a[tag=temp] add runner
tag @a[tag=temp] remove tagger

tag @a[tag=temp] remove temp

# This changes the teams and resets the advancement
team leave @a

team join taggers @a[tag=tagger]

team join runner @a[tag=runner]

execute as @a[tag=tagger] run tellraw @a {"text": "The tagger is ", "extra": [{"selector":"@s"}]}

advancement revoke @a only tag_main:on_hurt

execute as @a run playsound minecraft:block.note_block.pling player @s ~ ~ ~