execute at @e[tag=spawn] run worldborder center ~ ~

clear @a

tag @a remove winner
# Assigns the tags
team leave @a

tag @a remove tagger
tag @a remove runner
tag @a remove spectate

execute as @a[scores={teamChoose=-1}] run tag @s add spectate

execute as @a[scores={teamChoose=0}] run function tag_main:start_teams

execute as @a[scores={teamChoose=1}] run tag @s add tagger

execute as @a[scores={teamChoose=2}] run tag @s add runner

execute store result score players Numbers run execute if entity @a[tag=!spectate]
execute store result score runners Numbers run execute if entity @a[tag=runner,tag=!spectate]
execute store result score taggers Numbers run execute if entity @a[tag=tagger,tag=!spectate]

execute if score runners Numbers = players Numbers run tag @r[tag=!spectate] add teamChangeToTagger
execute if score taggers Numbers = players Numbers run tag @r[tag=!spectate] add teamChangeToRunner

execute as @a[tag=teamChangeToTagger] run tag @s remove runner
execute as @a[tag=teamChangeToTagger] run tag @s add tagger
execute as @a[tag=teamChangeToTagger] run tag @s remove teamChangeToTagger

execute as @a[tag=teamChangeToRunner] run tag @s remove tagger
execute as @a[tag=teamChangeToRunner] run tag @s add runner
execute as @a[tag=teamChangeToRunner] run tag @s remove teamChangeToRunner

# This sets the timers up
scoreboard players operation Timer gameTimer = EndTimer gameTimer

scoreboard players operation SecondRound gameTimer = EndTimer gameTimer
scoreboard players operation SecondRound gameTimer /= Two Numbers

scoreboard players operation LastRound gameTimer = EndTimer gameTimer
scoreboard players operation LastRound gameTimer /= Four Numbers

team join taggers @a[tag=tagger]
team join runner @a[tag=runner]

# This spreads the players
execute as @e[tag=spawn] at @s run tp ~ ~-309 ~

execute at @e[tag=spawn] run spreadplayers ~ ~ 25 60 true @a

execute as @e[tag=spawn] at @s run tp ~ ~309 ~

execute at @e[tag=spawn] run spawnpoint @a ~ ~ ~

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
execute if score Tools Toggle matches 5 run give @a diamond_axe
execute if score Tools Toggle matches 5 run give @a diamond_pickaxe
execute if score Tools Toggle matches 5 run give @a diamond_shovel

## Netherite
execute if score Tools Toggle matches 6 run give @a netherite_axe
execute if score Tools Toggle matches 6 run give @a netherite_pickaxe
execute if score Tools Toggle matches 6 run give @a netherite_shovel

# This is to set the bossbar timer
execute store result bossbar runnertimer max run scoreboard players get EndTimer gameTimer
execute store result bossbar runnertimer value run scoreboard players get Timer gameTimer
bossbar set runnertimer name ["",{"text":"Round "},{"score":{"name":"Rounds","objective":"round"},"color": "gold"}]
bossbar set runnertimer players @a

# This gives the player's scores for their respective effects
execute as @a[scores={effectTrigger=1..}] run scoreboard players operation @s effectType = @s effectTrigger
tag @a add noEffect
give @a[scores={effectType=1..}] carrot_on_a_stick{Floating:1b,Enchantments:[{}],display:{Name:'[{"text":"Effect Activator","italic":false}]'}}

# Insane mode stuff
execute if score Insane Toggle matches 1 run scoreboard players set PowerupCooldown Numbers 200
execute if score Insane Toggle matches 0 run scoreboard players set PowerupCooldown Numbers 400

gamerule doImmediateRespawn true

execute as @e[tag=tagger] at @s run playsound block.note_block.pling player @s ~ ~ ~ 100 2.0
tellraw @a {"text":"The tagger is ", "extra":[{"selector":"@e[tag=tagger]"}]}

scoreboard players set @a eyeTimer 100
scoreboard players set @a effectLost 0
scoreboard players set @a effectTimer 0
scoreboard players set @a reverseTime 0

scoreboard players add Rounds round 1

time set day

gamemode survival @a
scoreboard players set State gameStart 1