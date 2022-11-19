clear @a

kill @e[type=marker,tag=tpSpawn]
summon marker ~ ~ ~ {Tags:[tpSpawn]}
execute at @e[tag=tpSpawn,type=marker] run spawnpoint @a ~ ~ ~

# Assigns the tags
team leave @a

tag @a remove winner
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
execute if score gameMode Toggle matches 5 run scoreboard players add Timer gameTimer 300

scoreboard players operation SecondRound gameTimer = EndTimer gameTimer
scoreboard players operation SecondRound gameTimer /= Two Numbers

scoreboard players operation LastRound gameTimer = EndTimer gameTimer
scoreboard players operation LastRound gameTimer /= Four Numbers

team join taggers @a[tag=tagger]
team join runner @a[tag=runner]

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

execute if score gameMode Toggle matches 5 run give @a[tag=tagger] warped_fungus_on_a_stick{Floating:1b,Enchantments:[{}],display:{Name:'[{"text":"Runner Revealer","italic":false}]'}}

# Insane mode stuff
execute if score Insane Toggle matches 1 run scoreboard players set PowerupCooldown Numbers 200
execute if score Insane Toggle matches 0 run scoreboard players set PowerupCooldown Numbers 400

gamerule doImmediateRespawn true

execute as @a[tag=tagger] at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2.0
tellraw @a {"text":"The tagger is ", "extra":[{"selector":"@a[tag=tagger]"}]}

# Sets up some scoreboards
scoreboard players set @a eyeTimer 100
scoreboard players set @a effectLost 0
scoreboard players set @a effectTimer 0
scoreboard players set @a reverseTime 0
scoreboard players set @a damageDelt 0
scoreboard players set @a airTime 0
scoreboard players set @a blindTimer -1
scoreboard players set @a heartBeatSpeed 0
scoreboard players set winnerTimer gameTimer 0

execute if score gameMode Toggle matches 5 run scoreboard players set @a[tag=tagger] blindTimer 300

tag @a[tag=airborne] remove airborne

execute if score gameMode Toggle matches 1..4 run team modify runner nametagVisibility always 
execute if score gameMode Toggle matches 5 run team modify runner nametagVisibility hideForOtherTeams 

execute if score gameMode Toggle matches 1..4 run team modify taggers nametagVisibility always 
execute if score gameMode Toggle matches 5 run team modify taggers nametagVisibility hideForOtherTeams 

scoreboard players add Rounds round 1

time set day

# This forces default if a person doesn't have a specific sound selected
execute as @a unless score @s playerRevelerSound matches 0.. run scoreboard players set @s playerRevelerSound 1
execute as @a unless score @s heartBeatSound matches 0.. run scoreboard players set @s heartBeatSound 1

# This sets the world border
execute at @e[type=marker,tag=tpSpawn] run worldborder center ~ ~

worldborder set 100 1

execute at @e[type=marker,tag=tpSpawn] run spreadplayers ~ ~ 30 60 true @a

gamemode survival @a
scoreboard players set State gameStart 1