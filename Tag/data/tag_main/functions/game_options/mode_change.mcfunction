#minecraft:birch_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Normal tag: There is always one tagger and the rest is a runner. When a tagger hits a runner, the runner becomes the new tagger. Whoever is runner after the timer runs out is the winner.\\""}}',Text2:'{"text":"Normal Tag"}'},display:{Name:'{"text":"Custom Sign"}'}}

#minecraft:birch_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Freeze tag: There is always one tagger and the rest is a runner. When a tagger hits a runner, the runner becomes freezes. If the tagger freezes every runner before the timer runs out, they win. Otherwise, the runners win if even only one is not frozen.\\""}}',Text2:'{"text":"Freeze Tag"}'},display:{Name:'{"text":"Custom Sign"}'}}

# From Normal to Freeze tag
execute if score Selection optionsSelect matches ..1 at @e[tag=spawn] run setblock ~2 ~2 ~3 mangrove_button[facing=north]

execute if score Selection optionsSelect matches ..1 at @e[tag=spawn] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 2"}

execute if score Selection optionsSelect matches ..1 at @e[tag=spawn] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Freeze tag: When a tagger hits a runner, the runner freezes and are stuck on the spot untill after 45 seconds, or when another runner tags the frozen player. If the tagger freezes every runner before the timer runs out, they win. Otherwise, the runners win if even only one is not frozen.\\""}}',Text2:'{"text":"Freeze Tag"}'}

execute if score Selection optionsSelect matches ..1 run scoreboard players set gameMode Toggle 2

# From Freeze to Reverse tag
execute if score Selection optionsSelect matches 2 at @e[tag=spawn] run setblock ~2 ~2 ~3 warped_button[facing=north]

execute if score Selection optionsSelect matches 2 at @e[tag=spawn] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 3"}

execute if score Selection optionsSelect matches 2 at @e[tag=spawn] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a {\\"text\\":\\"Reverse Tag is where whoever is the tagger for the longest before the timer runs out, wins. Runners don\'t have any glowing effect to give them the edge to take over the tagger!\\"}"}}',Text2:'{"text":"Reverse Tag"}'}

execute if score Selection optionsSelect matches 2 run scoreboard players set gameMode Toggle 3

# From Reverse to Normal tag
execute if score Selection optionsSelect matches 3 at @e[tag=spawn] run setblock ~2 ~2 ~3 birch_button[facing=north]

execute if score Selection optionsSelect matches 3 at @e[tag=spawn] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 1"}

execute if score Selection optionsSelect matches 3 at @e[tag=spawn] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Normal tag is the default mode. When a tagger hits a runner, the runner becomes the new tagger. Whoever is runner after the timer runs out is the winner.\\""}}',Text2:'{"text":"Normal Tag"}'}

execute if score Selection optionsSelect matches 3 run scoreboard players set gameMode Toggle 1


scoreboard players set Selection optionsSelect 0