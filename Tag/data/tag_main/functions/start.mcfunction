execute at @e[tag=spawn] run worldborder center ~ ~
worldborder set 125 0

team leave @a

tag @a remove tagger

tag @r add tagger

scoreboard players set Timer gameTimer 0

scoreboard players operation SecondRound gameTimer = EndTimer gameTimer
scoreboard players operation SecondRound gameTimer /= Two Numbers

scoreboard players operation LastRound gameTimer = EndTimer gameTimer
scoreboard players operation LastRound gameTimer /= Three Numbers

team join taggers @a[tag=tagger]
team join runner @a[tag=!tagger]

# This spreads the players
execute as @e[tag=spawn] at @s run tp ~ ~-309 ~

execute at @e[tag=spawn] run spreadplayers ~ ~ 25 60 true @a

execute as @e[tag=spawn] at @s run tp ~ ~309 ~

gamemode survival @a

scoreboard players set State gameStart 1