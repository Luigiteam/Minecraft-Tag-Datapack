tellraw @a [{"selector":"@s"},{"text":" has been found","color":"white"}]
playsound block.note_block.pling player @a ~ ~ ~ 100 1.5

execute as @s run function tag_main:tag_function/tag_infection