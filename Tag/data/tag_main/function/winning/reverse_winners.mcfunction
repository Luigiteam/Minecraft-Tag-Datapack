scoreboard players set State gameStart 0
scoreboard players set @a guiDelay 10


execute at @a[tag=winner] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;2651799,4312372], fade_colors:[I;14188952,15435844]}], flight_duration:1b}}}}

bossbar set runnertimer players

scoreboard players add @a[tag=winner] wins 1

function tag_main:reload

tellraw @a ["","The winner is ",{"selector":"@a[tag=winner]","color":"gold"},{"text": "!"}]
tellraw @a " "