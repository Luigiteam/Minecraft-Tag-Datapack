# 1 - Insane Mode Toggle
execute if score Selection optionsSelect matches 1 store result score num optionsSelect run scoreboard players get Insane Toggle

execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 0 run scoreboard players set Insane Toggle 1
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 0 at @e[tag=tpOptions,type=marker] run playsound block.note_block.bit block @a ~ ~1 ~ 100 2.0

execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 1 run scoreboard players set Insane Toggle 0
execute if score Selection optionsSelect matches 1 if score num optionsSelect matches 1 at @e[tag=tpOptions,type=marker] run playsound block.note_block.bit block @a ~ ~1 ~ 100 0.1

scoreboard players set Selection optionsSelect 0