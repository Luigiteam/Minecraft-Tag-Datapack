execute if score seekType optionsSelect matches 0 run tag @s add spectate
execute if score seekType optionsSelect matches 0 run tellraw @a [{"selector":"@s"},{"text":" has been found","color":"white"}]
execute if score seekType optionsSelect matches 0 run playsound block.note_block.pling player @a ~ ~ ~ 100 1.5

execute if score seekType optionsSelect matches 1 as @s run function tag_main:tag_function/tag_infection