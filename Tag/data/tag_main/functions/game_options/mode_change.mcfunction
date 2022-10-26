#minecraft:birch_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Normal tag: There is always one tagger and the rest is a runner. When a tagger hits a runner, the runner becomes the new tagger. Whoever is runner after the timer runs out is the winner.\\""}}',Text2:'{"text":"Normal Tag"}'},display:{Name:'{"text":"Custom Sign"}'}}

#minecraft:birch_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Freeze tag: There is always one tagger and the rest is a runner. When a tagger hits a runner, the runner becomes freezes. If the tagger freezes every runner before the timer runs out, they win. Otherwise, the runners win if even only one is not frozen.\\""}}',Text2:'{"text":"Freeze Tag"}'},display:{Name:'{"text":"Custom Sign"}'}}

## From Normal to Freeze tag
execute if score Selection optionsSelect matches ..1 at @e[tag=spawn,type=marker] run setblock ~2 ~2 ~3 mangrove_button[facing=north]

execute if score Selection optionsSelect matches ..1 at @e[tag=spawn,type=marker] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 2"}

execute if score Selection optionsSelect matches ..1 at @e[tag=spawn,type=marker] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Freeze tag: When a tagger hits a runner, the runner freezes and are stuck on the spot untill after 45 seconds, or when another runner tags the frozen player. If the tagger freezes every runner before the timer runs out, they win. Otherwise, the runners win if even only one is not frozen.\\""}}',Text2:'{"text":"Freeze Tag"}'}

execute if score Selection optionsSelect matches ..1 run scoreboard players set gameMode Toggle 2

## From Freeze to Reverse tag
execute if score Selection optionsSelect matches 2 at @e[tag=spawn,type=marker] run setblock ~2 ~2 ~3 warped_button[facing=north]

execute if score Selection optionsSelect matches 2 at @e[tag=spawn,type=marker] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 3"}

execute if score Selection optionsSelect matches 2 at @e[tag=spawn,type=marker] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a {\\"text\\":\\"Reverse Tag is where whoever is the tagger for the longest before the timer runs out, wins. Runners don\'t have any glowing effect to give them the edge to take over the tagger!\\"}"}}',Text2:'{"text":"Reverse Tag"}'}

execute if score Selection optionsSelect matches 2 run scoreboard players set gameMode Toggle 3

## From Reverse to Infection tag
execute if score Selection optionsSelect matches 3 at @e[tag=spawn,type=marker] run setblock ~2 ~2 ~3 acacia_button[facing=north]

execute if score Selection optionsSelect matches 3 at @e[tag=spawn,type=marker] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 4"}

execute if score Selection optionsSelect matches 3 at @e[tag=spawn,type=marker] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a {\\"text\\":\\"Infection tag is a mode when a tagger tags a runner, the runner permaniently becomes a tagger and the original tagger stays as a tagger. The taggers win if there are no more runners left. Any remaining runners win if they don\'t get tagged when time is up.\\"}"}}',Text2:'{"text":"Infection Tag"}'}

execute if score Selection optionsSelect matches 3 run scoreboard players set gameMode Toggle 4

## From Infection to Hide-and-Seek tag
execute if score Selection optionsSelect matches 4 at @e[tag=spawn,type=marker] run setblock ~2 ~2 ~3 crimson_button[facing=north]

execute if score Selection optionsSelect matches 4 at @e[tag=spawn,type=marker] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 5"}

execute if score Selection optionsSelect matches 4 at @e[tag=spawn,type=marker] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a [\\"\\",{\\"text\\":\\"Hide-and-Seek is where the tagger have to find all runners before time runs out. Only the tagger glows, but gets a special power that can make the nearest runner glow, but this will reset the effect timer. when a tagger hits a runner, they either turn into a:\\\\n\\\\n \\"},{\\"text\\":\\"spectator [click me for that!]\\",\\"color\\":\\"green\\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"/scoreboard players set seekType optionsSelect 0\\"}},{\\"text\\":\\" or another\\",\\"color\\":\\"green\\"},{\\"text\\":\\"\\\\n\\\\n \\"},{\\"text\\":\\"tagger [click me for that!]\\",\\"color\\":\\"aqua\\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"/scoreboard players set seekType optionsSelect 1\\"}}]"}}',Text2:'{"text":"Hide-and-Seek"}'}

execute if score Selection optionsSelect matches 4 run scoreboard players set gameMode Toggle 5

## From Hide-and-Seek to Normal tag
execute if score Selection optionsSelect matches 5 at @e[tag=spawn,type=marker] run setblock ~2 ~2 ~3 birch_button[facing=north]

execute if score Selection optionsSelect matches 5 at @e[tag=spawn,type=marker] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 1"}

execute if score Selection optionsSelect matches 5 at @e[tag=spawn,type=marker] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Normal tag is the default mode. When a tagger hits a runner, the runner becomes the new tagger. Whoever is runner after the timer runs out is the winner.\\""}}',Text2:'{"text":"Normal Tag"}'}

execute if score Selection optionsSelect matches 5 run scoreboard players set gameMode Toggle 1

scoreboard players set Selection optionsSelect 0