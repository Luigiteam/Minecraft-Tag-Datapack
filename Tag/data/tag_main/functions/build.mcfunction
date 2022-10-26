scoreboard players set @a teamChoose 0

scoreboard players set State gameStart 0

execute if entity @e[type=marker,tag=spawn] run function tag_main:reload

execute at @s run summon marker ~ 309 ~ {Tags:["builder"]}
execute at @s run summon marker ~ ~3 ~ {Tags:["tpSpawn"]}

execute at @e[tag=builder,type=marker] run setblock ~ ~-309 ~ air
execute at @e[tag=tpSpawn,type=marker] run spawnpoint @a ~ ~ ~

execute at @e[tag=builder,type=marker] run setblock ~ ~ ~ structure_block{name:"tag_main:start",mode:"LOAD",posY:0,ignoreEntities:0b}
execute at @e[tag=builder,type=marker] run setblock ~ ~1 ~ redstone_block

kill @e[tag=builder,type=marker]

clear @a

# This detects what are the options are set to place the correct buttons

## Keep Inventory
execute if score State gameStart matches 0 store result score num optionsSelect run gamerule keepInventory
execute at @e[type=marker,tag=spawn] if score num optionsSelect matches 0 run setblock ~-3 ~2 ~-2 birch_button[facing=east]
execute at @e[type=marker,tag=spawn] if score num optionsSelect matches 1 run setblock ~-3 ~2 ~-2 mangrove_button[facing=east]

## yDistance
execute if score State gameStart matches 0 store result score num optionsSelect run scoreboard players get yDistance Toggle

execute at @e[type=marker,tag=spawn] if score num optionsSelect matches 0 run setblock ~-2 ~2 ~-3 birch_button[facing=south]
execute at @e[type=marker,tag=spawn] if score num optionsSelect matches 1 run setblock ~-2 ~2 ~-3 mangrove_button[facing=south]

## Powerups
execute if score State gameStart matches 0 store result score num optionsSelect run scoreboard players get PowerUps Toggle

execute at @e[type=marker,tag=spawn] if score num optionsSelect matches 0 run setblock ~2 ~2 ~-3 birch_button[facing=south]
execute at @e[type=marker,tag=spawn] if score num optionsSelect matches 1 run setblock ~2 ~2 ~-3 mangrove_button[facing=south]

# Gamemode Toggles

### NORMAL
execute if score gameMode Toggle matches 1 at @e[type=marker,tag=spawn] run setblock ~2 ~2 ~3 birch_button[facing=north]

execute if score gameMode Toggle matches 1 at @e[type=marker,tag=spawn] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 1"}

execute if score gameMode Toggle matches 1 at @e[type=marker,tag=spawn] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Normal tag: There is always one tagger and the rest is a runner. When a tagger hits a runner, the runner becomes the new tagger. Whoever is runner after the timer runs out is the winner.\\""}}',Text2:'{"text":"Normal Tag"}'}

### FREEZE
execute if score gameMode Toggle matches 2 at @e[type=marker,tag=spawn] run setblock ~2 ~2 ~3 minecraft:mangrove_button[facing=north]

execute if score gameMode Toggle matches 2 at @e[type=marker,tag=spawn] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 2"}

execute if score gameMode Toggle matches 2 at @e[type=marker,tag=spawn] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a \\"Freeze tag: There is always one tagger and the rest is a runner. When a tagger hits a runner, the runner becomes freezes. If the tagger freezes every runner before the timer runs out, they win. Otherwise, the runners win if even only one is not frozen.\\""}}',Text2:'{"text":"Freeze Tag"}'}

## REVERSE
execute if score gameMode Toggle matches 3 at @e[type=marker,tag=spawn] run setblock ~2 ~2 ~3 warped_button[facing=north]

execute if score gameMode Toggle matches 3 at @e[type=marker,tag=spawn] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 3"}

execute if score gameMode Toggle matches 3 at @e[type=marker,tag=spawn] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a {\\"text\\":\\"Reverse Tag is where whoever is the tagger for the longest before the timer runs out, wins. Runners don\'t have any glowing effect to give them the edge to take over the tagger!\\"}"}}',Text2:'{"text":"Reverse Tag"}'}

## INFECTION
execute if score gameMode Toggle matches 4 at @e[type=marker,tag=spawn] run setblock ~2 ~2 ~3 acacia_button[facing=north]

execute if score gameMode Toggle matches 4 at @e[type=marker,tag=spawn] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 4"}

execute if score gameMode Toggle matches 4 at @e[type=marker,tag=spawn] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a {\\"text\\":\\"Infection tag is a mode when a tagger tags a runner, the runner permaniently becomes a tagger and the original tagger stays as a tagger. The taggers win if there are no more runners left. Any remaining runners win if they don\'t get tagged when time is up.\\"}"}}',Text2:'{"text":"Infection Tag"}'}

## HIDE-AND-SEEK
execute if score gameMode Toggle matches 5 at @e[tag=spawn,type=marker] run setblock ~2 ~2 ~3 crimson_button[facing=north]

execute if score gameMode Toggle matches 5 at @e[tag=spawn,type=marker] run data merge block ~2 ~2 ~5 {Command:"scoreboard players set Selection optionsSelect 5"}

execute if score gameMode Toggle matches 5 at @e[tag=spawn,type=marker] run data merge block ~2 ~3 ~3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @a [\\"\\",{\\"text\\":\\"Hide-and-Seek is where the tagger have to find all runners before time runs out. Only the tagger glows, but gets a special power that can make the nearest runner glow, but this will reset the effect timer. when a tagger hits a runner, they either turn into a:\\\\n\\\\n \\"},{\\"text\\":\\"spectator [click me for that!]\\",\\"color\\":\\"green\\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"/scoreboard players set seekType optionsSelect 0\\"}},{\\"text\\":\\" or another\\",\\"color\\":\\"green\\"},{\\"text\\":\\"\\\\n\\\\n \\"},{\\"text\\":\\"tagger [click me for that!]\\",\\"color\\":\\"aqua\\",\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"/scoreboard players set seekType optionsSelect 1\\"}}]"}}',Text2:'{"text":"Hide-and-Seek"}'}

# This sets the world border
execute at @e[type=marker,tag=spawn] run worldborder center ~ ~
worldborder set 100 1