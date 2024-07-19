scoreboard players set State gameStart 0
scoreboard players set @a guiDelay 10

execute at @a[tag=tagger] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;2651799,4312372], fade_colors:[I;14188952,15435844]}], flight_duration:1b}}}}

bossbar set runnertimer players

advancement grant @a[tag=runner] only tag_main:on_hurt_by_runner

scoreboard players add @a[tag=tagger] wins 1

tellraw @a ["","The winner is ",{"selector":"@a[tag=tagger]","color":"gold"},{"text": "!"}]
tellraw @a " "