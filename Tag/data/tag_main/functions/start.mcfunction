execute at @e[tag=spawn] run worldborder center ~ ~
worldborder set 125 0

team leave @a

tag @a remove tagger

tag @r add tagger

# This sets the timers up
scoreboard players operation Timer gameTimer = EndTimer gameTimer

scoreboard players operation SecondRound gameTimer = EndTimer gameTimer
scoreboard players operation SecondRound gameTimer /= Two Numbers

scoreboard players operation LastRound gameTimer = EndTimer gameTimer
scoreboard players operation LastRound gameTimer /= Four Numbers

team join taggers @a[tag=tagger]
team join runner @a[tag=!tagger]

# This spreads the players
execute as @e[tag=spawn] at @s run tp ~ ~-309 ~

execute at @e[tag=spawn] run spreadplayers ~ ~ 25 60 true @a

execute as @e[tag=spawn] at @s run tp ~ ~309 ~


# This gives the tools out

## Wooden 
execute if score Tools Toggle matches 1 run give @a wooden_axe
execute if score Tools Toggle matches 1 run give @a wooden_pickaxe
execute if score Tools Toggle matches 1 run give @a wooden_shovel

## Stone
execute if score Tools Toggle matches 2 run give @a stone_axe
execute if score Tools Toggle matches 2 run give @a stone_pickaxe
execute if score Tools Toggle matches 2 run give @a stone_shovel

## Golden
execute if score Tools Toggle matches 3 run give @a golden_axe
execute if score Tools Toggle matches 3 run give @a golden_pickaxe
execute if score Tools Toggle matches 3 run give @a golden_shovel

## Iron
execute if score Tools Toggle matches 4 run give @a iron_axe
execute if score Tools Toggle matches 4 run give @a iron_pickaxe
execute if score Tools Toggle matches 4 run give @a iron_shovel

## Diamond
execute if score Tools Toggle matches 1 run give @a diamond_axe
execute if score Tools Toggle matches 1 run give @a diamond_pickaxe
execute if score Tools Toggle matches 1 run give @a diamond_shovel

## Netherite
execute if score Tools Toggle matches 1 run give @a netherite_axe
execute if score Tools Toggle matches 1 run give @a netherite_pickaxe
execute if score Tools Toggle matches 1 run give @a netherite_shovel

# This is to set the bossbar timer
execute store result bossbar runnertimer max run scoreboard players get EndTimer gameTimer
execute store result bossbar runnertimer value run scoreboard players get Timer gameTimer
bossbar set runnertimer players @a

gamemode survival @a
scoreboard players set State gameStart 1