execute if score gameMode Toggle matches 5 run effect give @p[tag=runner] glowing 10 0 true

summon marker ~ ~ ~ {Tags:[particle]}

scoreboard players set @e[tag=!processed,tag=particle,type=marker] gameTimer 200
scoreboard players set @e[tag=!processed,tag=particle,type=marker] markerTimer 0
tag @e[type=marker,tag=particle,tag=!processed] add processed

execute as @e[tag=particle] at @s run tp @s ~ ~ ~ facing entity @e[tag=runner,tag=!spectate,tag=!hidden,limit=1,sort=nearest]

scoreboard players set @s effectTimer 300

playsound block.conduit.activate block @s ~ ~ ~ 100 2.0