execute as @e[type=marker,tag=tpOptions] at @s run kill @e[type=item,distance=..7]

execute if score State gameStart matches 1.. store result score worldBorderSizeGet Numbers run worldborder get
execute if score State gameStart matches 1.. if score worldBorderSizeGet Numbers < worldBorderSize Numbers run worldborder add 1
execute if score State gameStart matches 1.. if score worldBorderSizeGet Numbers > worldBorderSize Numbers run worldborder add -1

execute if score State gameStart matches 1.. unless score worldBorderSizeGet Numbers matches 60..200 run worldborder set 200

execute if score State gameStart matches 1 run gamemode spectator @a[tag=spectate]

scoreboard players enable @a effectTrigger
scoreboard players enable @a teamChoose
scoreboard players enable @a giveBook
scoreboard players enable @a textTrigger

execute as @a at @s if score @s giveBook matches 1.. run function tag_main:book

execute at @e[type=marker,tag=spawn] if score State gameStart matches 1.. run tp @a[distance=..20,gamemode=survival] @e[tag=tpSpawn,type=marker,limit=1,sort=nearest]

execute at @e[type=marker,tag=spawn] run kill @e[type=item,distance=..15]

execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}},scores={gameTimer=100..}] run kill @s

execute if score State gameStart matches 1 if score Insane Toggle matches 1 run scoreboard players add tnt gameTimer 1
execute if score tnt gameTimer matches 300.. as @a[tag=!freeze,scores={blindTimer=..0}] at @s run summon tnt ~ ~ ~ {Fuse:60s}
execute if score tnt gameTimer matches 300.. run scoreboard players set tnt gameTimer 0

# Text Triggers
execute as @a if score @s textTrigger matches 1 run function tag_main:text_readouts/powerup_description

execute as @a if score @s textTrigger matches 2 run function tag_main:text_readouts/powerup_changeout

execute as @a if score @s textTrigger matches 3 run function tag_main:text_readouts/sound_settings/player_revealer

execute as @a if score @s textTrigger matches 4 run function tag_main:text_readouts/sound_settings/heartbeat

# Hide-and-Seek
execute if score State gameStart matches 1 if score gameMode Toggle matches 5 store result score runners Numbers run execute if entity @e[tag=runner,tag=!spectate]
execute if score State gameStart matches 1 if score gameMode Toggle matches 5 if score runners Numbers matches 0 run scoreboard players add winnerTimer gameTimer 1
execute if score State gameStart matches 1 if score gameMode Toggle matches 5 if score runners Numbers matches 1.. run scoreboard players set winnerTimer gameTimer 1
execute if score State gameStart matches 1 if score gameMode Toggle matches 5 if score winnerTimer gameTimer matches 10.. run function tag_main:winning/infection_tagger_win

execute as @a[tag=tagger,scores={blindTimer=0..300}] run scoreboard players remove @s blindTimer 1

execute as @a[tag=tagger,scores={blindTimer=0..300}] run effect give @s blindness 10 0 true
execute as @a[tag=tagger,scores={blindTimer=0..300}] run effect give @s slowness 1 127 true
execute as @a[tag=tagger,scores={blindTimer=0..300}] run effect give @s jump_boost 1 128 true

execute as @a[tag=tagger,scores={blindTimer=0}] run effect clear @s slowness
execute as @a[tag=tagger,scores={blindTimer=0}] run effect clear @s blindness
execute as @a[tag=tagger,scores={blindTimer=0}] run effect clear @s jump_boost

## Heartbeat
execute as @a[tag=runner] at @s if entity @a[tag=tagger,distance=31..] if score State gameStart matches 1.. if score gameMode Toggle matches 5 run scoreboard players set @s heartBeatSpeed 0
execute as @a[tag=runner] at @s if entity @a[tag=tagger,distance=31..] if score State gameStart matches 1.. if score gameMode Toggle matches 5 run scoreboard players set @s heartBeatTimer 0

execute as @a[tag=runner,scores={heartBeatSpeed=1..}] at @s if entity @e[tag=tagger,distance=..31] if score State gameStart matches 1.. if score gameMode Toggle matches 5 run scoreboard players add @s heartBeatTimer 1

execute as @a[tag=runner] at @s if entity @a[tag=tagger,distance=21..31] if score State gameStart matches 1.. if score gameMode Toggle matches 5 run scoreboard players set @s heartBeatSpeed 1
execute as @a[tag=runner] at @s if entity @a[tag=tagger,distance=11..20] if score State gameStart matches 1.. if score gameMode Toggle matches 5 run scoreboard players set @s heartBeatSpeed 2
execute as @a[tag=runner] at @s if entity @a[tag=tagger,distance=0..10] if score State gameStart matches 1.. if score gameMode Toggle matches 5 run scoreboard players set @s heartBeatSpeed 3

### Mode 1
execute as @a[tag=runner,scores={heartBeatSpeed=1,heartBeatSound=1}] at @s if score @s heartBeatTimer matches 20 run playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~ 1 0.5

execute as @a[tag=runner,scores={heartBeatSpeed=2,heartBeatSound=1}] at @s if score @s heartBeatTimer matches 10 run playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~ 1 1.0

execute as @a[tag=runner,scores={heartBeatSpeed=3,heartBeatSound=1}] at @s if score @s heartBeatTimer matches 5 run playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~ 1 1.5

### Mode 2
execute as @a[tag=runner,scores={heartBeatSpeed=1,heartBeatSound=2}] at @s if score @s heartBeatTimer matches 5 run playsound block.note_block.basedrum ambient @s ~ ~ ~ 1 0.707107 1
execute as @a[tag=runner,scores={heartBeatSpeed=1,heartBeatSound=2}] at @s if score @s heartBeatTimer matches 20 run playsound block.note_block.basedrum ambient @s ~ ~ ~ 1 0.707107 1

execute as @a[tag=runner,scores={heartBeatSpeed=2,heartBeatSound=2}] at @s if score @s heartBeatTimer matches 5 run playsound block.note_block.basedrum ambient @s ~ ~ ~ 1 0.707107 1
execute as @a[tag=runner,scores={heartBeatSpeed=2,heartBeatSound=2}] at @s if score @s heartBeatTimer matches 10 run playsound block.note_block.basedrum ambient @s ~ ~ ~ 1 0.707107 1

execute as @a[tag=runner,scores={heartBeatSpeed=3,heartBeatSound=2}] at @s if score @s heartBeatTimer matches 1 run playsound block.note_block.basedrum ambient @s ~ ~ ~ 1 0.707107 1
execute as @a[tag=runner,scores={heartBeatSpeed=3,heartBeatSound=2}] at @s if score @s heartBeatTimer matches 5 run playsound block.note_block.basedrum ambient @s ~ ~ ~ 1 0.707107 1
# Infection Tag
execute if score State gameStart matches 1 if score gameMode Toggle matches 4 store result score taggers Numbers run execute if entity @a[tag=tagger]
execute if score State gameStart matches 1 if score gameMode Toggle matches 4 if score taggers Numbers = players Numbers run function tag_main:winning/infection_tagger_win
# Reverse Tag
execute if score State gameStart matches 1 if score gameMode Toggle matches 3 run scoreboard players add @a[tag=tagger] reverseTime 1

# Freeze Tag
## OID stuff
execute as @a[tag=runner] unless score @s oid matches 0.. run function tag_main:new_id

## Win Checks
execute if score State gameStart matches 1 if score gameMode Toggle matches 2 store result score runners Numbers run execute if entity @a[tag=runner]
execute if score State gameStart matches 1 if score gameMode Toggle matches 2 store result score frozenRunners Numbers run execute if entity @a[tag=freeze]

execute if score frozenRunners Numbers = runners Numbers if score State gameStart matches 1 if score gameMode Toggle matches 2 run function tag_main:winning/tagger_winners

execute as @a[scores={timeFroze=0..}] run scoreboard players remove @s timeFroze 1
execute as @a[scores={timeFroze=0}] run advancement grant @s only tag_main:on_hurt_by_runner

execute at @a[tag=freeze] run particle minecraft:block minecraft:snow ~ ~ ~ 0 0 0 0.5 2
execute at @a[tag=freeze] run particle minecraft:block minecraft:blue_ice ~ ~ ~ 0 0 0 0.5 2

## This checks if a person is outside their cloud

execute as @e[tag=freezeCheck,type=marker] at @s if score @s oid = @p[tag=freeze] oid run tp @p[tag=freeze,limit=1,sort=nearest,distance=1..] @s

# This is some code that needs to run all the time
execute if score State gameStart matches 0.. run effect give @a saturation 1000000 255 true

execute if score State gameStart matches 1.. if score gameMode Toggle matches 1..2 run effect give @a[nbt=!{ActiveEffects:[{Id:14}]}] minecraft:glowing 1 0 true
execute if score State gameStart matches 1.. if score gameMode Toggle matches 1..2 run effect give @e[type=armor_stand,tag=decoy,nbt=!{ActiveEffects:[{Id:14}]}] minecraft:glowing 1 0 true
execute if score State gameStart matches 1.. run effect clear @a[nbt={ActiveEffects:[{Id:14}]}] glowing

execute if score State gameStart matches 1.. if score gameMode Toggle matches 3 run effect give @a[nbt=!{ActiveEffects:[{Id:14}]},tag=tagger] minecraft:glowing 1 0 true
execute if score State gameStart matches 1.. if score gameMode Toggle matches 3 run effect give @e[type=armor_stand,tag=decoy,nbt=!{ActiveEffects:[{Id:14}]}] minecraft:glowing 1 0 true

execute if score State gameStart matches 1.. if score gameMode Toggle matches 3 run effect clear @a[tag=runner] glowing

execute as @a[tag=tagger,nbt=!{ActiveEffects:[{Id:14}]}] at @s unless entity @a[tag=runner,distance=..31] if score State gameStart matches 1.. if score gameMode Toggle matches 5 run effect give @s glowing 1 0 true

# Not necisary, but gives some nice flare
execute if score gameMode Toggle matches 1 run bossbar set runnertimer name ["",{"text":"Round "},{"score":{"name":"Rounds","objective":"round"},"color": "gold"},{"text": ":"},{"text": " Normal Tag"}]
execute if score gameMode Toggle matches 2 run bossbar set runnertimer name ["",{"text":"Round "},{"score":{"name":"Rounds","objective":"round"},"color": "gold"},{"text": ":"},{"text": " Freeze Tag","color": "aqua"}]
execute if score gameMode Toggle matches 3 run bossbar set runnertimer name ["",{"text":"Round "},{"score":{"name":"Rounds","objective":"round"},"color": "gold"},{"text": ":"},{"text": " Reverse Tag","color": "green"}]
execute if score gameMode Toggle matches 4 run bossbar set runnertimer name ["",{"text":"Round "},{"score":{"name":"Rounds","objective":"round"},"color": "gold"},{"text": ":"},{"text": " Infection Tag","color": "red"}]
execute if score gameMode Toggle matches 5 run bossbar set runnertimer name ["",{"text":"Round "},{"score":{"name":"Rounds","objective":"round"},"color": "gold"},{"text": ":"},{"text": " Hide-and-Seek","color": "gray"}]

title @a[tag=runner,scores={heartBeatSpeed=0}] actionbar {"text": "The tagger is ", "extra":[{"selector":"@a[tag=tagger]"}]}
## heartbeat 1
title @a[tag=runner,scores={heartBeatSpeed=1,heartBeatTimer=10}] actionbar {"text":"♥","color":"red"}
title @a[tag=runner,scores={heartBeatSpeed=1,heartBeatTimer=20}] actionbar {"text":"< ♥ >","color":"red"}

## heartbeat 2
title @a[tag=runner,scores={heartBeatSpeed=2,heartBeatTimer=3}] actionbar {"text":"♥","color":"dark_red"}
title @a[tag=runner,scores={heartBeatSpeed=2,heartBeatTimer=6}] actionbar {"text":"< ♥ >","color":"dark_red"}
title @a[tag=runner,scores={heartBeatSpeed=2,heartBeatTimer=10}] actionbar {"text":"< < ♥ > >","color":"dark_red"}

## heartbeat 3
title @a[tag=runner,scores={heartBeatSpeed=3,heartBeatTimer=1}] actionbar {"text":"< ♥ >","color":"#700000"}
title @a[tag=runner,scores={heartBeatSpeed=3,heartBeatTimer=3}] actionbar {"text":"< < ♥ > >","color":"#700000"}
title @a[tag=runner,scores={heartBeatSpeed=3,heartBeatTimer=5}] actionbar {"text":"< < < ♥ > > >","color":"#700000"}

## heartbeat clear
execute as @a[tag=runner,scores={heartBeatSpeed=1,heartBeatTimer=20..}] run scoreboard players set @s heartBeatTimer 0
execute as @a[tag=runner,scores={heartBeatSpeed=2,heartBeatTimer=10..}] run scoreboard players set @s heartBeatTimer 0
execute as @a[tag=runner,scores={heartBeatSpeed=3,heartBeatTimer=5..}] run scoreboard players set @s heartBeatTimer 0

execute if score Timer gameTimer matches 1201.. run bossbar set runnertimer color yellow

execute if score Timer gameTimer matches 1200 run bossbar set runnertimer color red
execute if score Timer gameTimer matches 1200 run tellraw @a "1 Minute Remaining"

# Pre-Game
execute if score State gameStart matches 0 as @a at @s if entity @e[type=marker,tag=tpOptions,distance=..7] run gamemode adventure @a
execute if score State gameStart matches 0 as @a at @s if entity @e[type=marker,tag=tpSpawn,distance=..10]
execute if score State gameStart matches 0 run team join neutral @a

# This detirmines the nearest player's y distance and displays it on the taggers screen
execute as @a[tag=tagger] store result score @s yDistance run data get entity @s Pos[1]
execute at @a[tag=tagger] as @a[tag=runner,sort=nearest,limit=1] store result score @s yDistance run data get entity @s Pos[1]

scoreboard players operation yResults yDistance = @a[tag=tagger] yDistance
execute at @a[tag=tagger] as @a[tag=runner,sort=nearest,limit=1] run scoreboard players operation yResults yDistance -= @s yDistance

execute if score yDistance Toggle matches 1 as @a[tag=tagger] if score yResults yDistance matches ..-1 run title @s actionbar {"text": "The nearest runner is above you"}
execute if score yDistance Toggle matches 1 as @a[tag=tagger] if score yResults yDistance matches 0 run title @s actionbar {"text": "The nearest runner is the same level as you"}
execute if score yDistance Toggle matches 1 as @a[tag=tagger] if score yResults yDistance matches 1.. run title @s actionbar {"text": "The nearest runner is under you"}

# This is the fundunmentals for the Elytra of Soaring

## Detection & Effects

execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Floating:1b}}]}] run item replace entity @s armor.chest with minecraft:elytra{Floating:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Floating:1b}}]},scores={airTime=..0}] run tag @s add airborne
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Floating:1b}}]},scores={airTime=..0}] run tag @s add elytraKit

execute as @a[tag=elytraKit] run effect give @s levitation 2 30 true
execute at @a[tag=elytraKit] run playsound entity.firework_rocket.launch player @a ~ ~ ~

tag @a[tag=elytraKit] remove elytraKit

scoreboard players add @a[tag=airborne] airTime 1

execute at @a[tag=airborne,scores={airTime=1..50}] run particle firework ~ ~-1 ~ 0 1 0 0.07 5 force @a 

execute as @a[tag=airborne,nbt={OnGround:1b}] if score @s airTime matches 50.. run item replace entity @s armor.chest with air
execute as @a[tag=airborne,nbt={OnGround:1b}] if score @s airTime matches 50.. run tag @s remove airborne
execute as @a[tag=!airborne,nbt={OnGround:1b}] if score @s airTime matches 50.. run scoreboard players set @s airTime 0

scoreboard players set @a[nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Floating:1b}}]}] airTime 0

# This is how the Snowball works
execute at @e[type=marker,tag=snowballs] unless entity @e[type=snowball,distance=..2] run fill ~-2 ~-3 ~-2 ~2 ~3 ~2 air destroy
execute at @e[type=marker,tag=snowballs] unless entity @e[type=snowball,distance=..2] run effect give @a[distance=..10] slowness 5 2 true
kill @e[type=marker,tag=snowballs]
execute at @e[type=snowball,nbt={Item:{tag:{Floating:1b}}}] run summon minecraft:marker ~ ~ ~ {Tags:["snowballs"]}
# This is some clamp trap stuff
scoreboard players set @e[tag=ClampTrap] trapDestroy 0

## This activates the trap when a person is above it
scoreboard players add @e[tag=ClampTrap] gameTimer 1
scoreboard players add @e[tag=UpgradeClampTrap] gameTimer 1

execute as @e[tag=ClampTrap] if score @s gameTimer matches 100.. run data merge entity @s {Particle:"block minecraft:air 1 0 0 1"}
execute as @e[tag=ClampTrap] if score @s gameTimer matches 100.. at @s if entity @e[type=player,distance=..5] run scoreboard players set @s trapDestroy 1
execute as @e[tag=ClampTrap] if score @s gameTimer matches 100.. at @s if entity @e[type=player,distance=..5] at @e[type=player,distance=..5] run summon minecraft:evoker_fangs ~ ~ ~ {Glowing:1b}
execute as @e[tag=ClampTrap] if score @s gameTimer matches 100.. at @s run effect give @e[type=player,distance=..5] minecraft:slowness 10 10

execute as @e[tag=UpgradeClampTrap] if score @s gameTimer matches 60.. run data merge entity @s {Particle:"block air 1 0 0 1"}
execute as @e[tag=UpgradeClampTrap] if score @s gameTimer matches 60.. at @s if entity @e[type=player,distance=..5,nbt=!{ActiveEffects:[{Id:2}]}] run scoreboard players add @s trapDestroy 1
execute as @e[tag=UpgradeClampTrap] if score @s gameTimer matches 60.. at @s if entity @e[type=player,distance=..5,nbt=!{ActiveEffects:[{Id:2}]}] at @e[type=player,distance=..5,nbt=!{ActiveEffects:[{Id:2}]}] run summon minecraft:evoker_fangs ~ ~ ~ {Glowing:1b}
execute as @e[tag=UpgradeClampTrap] if score @s gameTimer matches 60.. at @s run effect give @e[type=player,distance=..5,nbt=!{ActiveEffects:[{Id:2}]}] slowness 10 15

execute as @e[tag=ClampTrap,type=area_effect_cloud] if score @s trapDestroy matches 1.. run kill @s
execute as @e[tag=UpgradeClampTrap,type=area_effect_cloud] if score @s trapDestroy matches 3.. run kill @s

execute as @e[tag=UpgradeClamp] unless score @s trapDestroy matches 0.. run scoreboard players set @s trapDestroy 0

# This is how the Clock powerup works
execute as @a[tag=runner,nbt={SelectedItem:{id:"minecraft:clock",tag:{Floating:1b}}},scores={Sneak=1..}] run function tag_main:powerup_functions/clock_trigger/clock_runner
execute as @a[tag=tagger,nbt={SelectedItem:{id:"minecraft:clock",tag:{Floating:1b}}},scores={Sneak=1..}] run function tag_main:powerup_functions/clock_trigger/clock_tagger

# This makes the powerups glow in their color

execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] run data merge entity @s {Glowing:1b}

## Wooden Sword glow color
team join Red @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",tag:{Floating:1b}}}]

## Clap Trap
team join Orange @e[type=item,nbt={Item:{id:"minecraft:polar_bear_spawn_egg"}}]

## Invis Potion
team join White @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}}]

## Elytra of Soaring
team join lightPurple @e[type=item,nbt={Item:{id:"minecraft:elytra",tag:{Floating:1b}}}]

## Clock of Destiny
team join Yellow @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{Floating:1b}}}]

## Snowball of Freezing
team join aqua @e[type=item,nbt={Item:{id:"minecraft:snowball",tag:{Floating:1b}}}]

## Eye of Teleportation
team join green @e[type=item,nbt={Item:{id:"minecraft:ender_eye",tag:{Floating:1b}}}]

## Punching Bow
team join gray @e[type=item,nbt={Item:{id:"minecraft:bow",tag:{Floating:1b}}}]

# This subtracts the Runner's timer
execute if score State gameStart matches 1 run scoreboard players remove Timer gameTimer 1
execute store result bossbar runnertimer value run scoreboard players get Timer gameTimer 
# This checks for the timer of taggers so they can get speed after 10 seconds (200 ticks)
scoreboard players set @a[tag=!tagger] gameTimer 0

execute if score State gameStart matches 1 as @a[tag=tagger] if score @s gameTimer < SpeedTimer Numbers run scoreboard players add @s gameTimer 1

execute if score PowerUps Toggle matches 1 if score State gameStart matches 1 if score PowerupTimer gameTimer < PowerupCooldown Numbers run scoreboard players add PowerupTimer gameTimer 1
execute if score allDisabled Toggle matches 0 if score PowerupTimer gameTimer >= PowerupCooldown Numbers run function tag_main:powerups

execute as @a[tag=tagger] if score Insane Toggle matches 0 if score gameMode Toggle matches 1..2 if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer > SecondRound gameTimer if score Timer gameTimer > LastRound gameTimer run effect give @s speed 1 0 true
execute as @a[tag=tagger] if score Insane Toggle matches 0 if score gameMode Toggle matches 1..2 if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer <= SecondRound gameTimer if score Timer gameTimer > LastRound gameTimer run effect give @s speed 1 1 true
execute as @a[tag=tagger] if score Insane Toggle matches 0 if score gameMode Toggle matches 1..2 if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer <= LastRound gameTimer run effect give @s speed 1 2 true

execute as @a[tag=tagger] if score Insane Toggle matches 0 if score gameMode Toggle matches 1..2 if score @s gameTimer >= SpeedTimer Numbers run effect give @s dolphins_grace 1 0 true

execute as @a[tag=tagger] if score Insane Toggle matches 0 if score gameMode Toggle matches 3 if score @s gameTimer >= SpeedTimer Numbers run effect give @s speed 1 0 true
execute as @a[tag=tagger] if score Insane Toggle matches 0 if score gameMode Toggle matches 3 if score @s gameTimer >= SpeedTimer Numbers run effect give @s dolphins_grace 1 0 true

execute as @a[tag=tagger] if score Insane Toggle matches 1 if score @s gameTimer >= SpeedTimer Numbers run effect give @s speed 3 0 true
execute as @a[tag=tagger] if score Insane Toggle matches 1 if score @s gameTimer >= SpeedTimer Numbers run effect give @s dolphins_grace 2 0 true

execute as @a[tag=runner] if score Insane Toggle matches 1 run effect give @s speed 1 0 true
execute as @a[tag=runner] if score Insane Toggle matches 1 run effect give @s dolphins_grace 1 0 true

# This gives effects to everyone
## Carrot on the stick stuff
execute as @a[scores={effectTimer=1..},tag=noEffect] if score State gameStart matches 1.. run scoreboard players remove @s effectTimer 1

execute as @a[tag=!noEffect,scores={effectUse=1..,effectTimer=1..}] run tellraw @s "You cannot use this right now"
execute as @a[tag=noEffect,scores={effectUse=1..}] run tellraw @s "You cannot use this right now"

execute as @a[scores={effectTimer=1}] at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1.0 2.0
tellraw @a[scores={effectTimer=1}] "You can use your effect now!"
execute as @a[tag=noEffect,scores={effectTimer=..0,effectUse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}}] run function tag_main:effect
scoreboard players set @a effectUse 0

### This gives players their carrot on a stick for effects
execute as @a store result score @s effectAmount run clear @s carrot_on_a_stick{Floating:1b} 0
execute as @a[scores={effectAmount=2..}] run clear @s carrot_on_a_stick{Floating:1b} 1

execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}},tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}},tag=!processed] run data modify entity @s PickupDelay set value 0
tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}},tag=!processed] add processed

execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}]},scores={effectType=1..}] run scoreboard players set @s effectLost 0
execute if score State gameStart matches 1.. as @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}]},scores={effectType=1..}] run scoreboard players add @s effectLost 1
execute as @a[scores={effectLost=100..}] run give @s carrot_on_a_stick{Floating:1b,Enchantments:[{}],display:{Name:'[{"text":"Effect Activator","italic":false}]'}}
execute as @a[scores={effectLost=100..}] run scoreboard players set @s effectLost 0

### This checks if an individual has no effect
execute as @a[tag=!noEffect,scores={effectType=1},nbt=!{ActiveEffects:[{Id:8}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=2},nbt=!{ActiveEffects:[{Id:11}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=3},nbt=!{ActiveEffects:[{Id:3}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=4},nbt=!{ActiveEffects:[{Id:5}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=5},nbt=!{ActiveEffects:[{Id:25}]}] run tag @s add noEffect

## Warped fungus on a stick
### This gives the effect
execute as @a[tag=tagger,scores={effectTimer=1..,effectUseWarped=1..}] run tellraw @s "You cannot use this right now"

execute as @a[tag=tagger,scores={effectTimer=..0,effectUseWarped=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Floating:1b}}}] at @s run function tag_main:effect_warped

scoreboard players set @a effectUseWarped 0

### This gives the warped stick to taggers
execute as @a store result score @s effectAmount run clear @s warped_fungus_on_a_stick{Floating:1b} 0
execute as @a[scores={effectAmount=2..}] run clear @s warped_fungus_on_a_stick{Floating:1b} 1

execute as @a[tag=runner,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Floating:1b}}]}] run clear @s warped_fungus_on_a_stick{Floating:1b} 1

execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Floating:1b}}},tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Floating:1b}}},tag=!processed] run data modify entity @s PickupDelay set value 0
tag @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Floating:1b}}},tag=!processed] add processed

execute as @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Floating:1b}}]},tag=tagger] run scoreboard players set @s effectLostWarped 0
execute if score State gameStart matches 1.. as @a[tag=tagger,nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{Floating:1b}}]},scores={effectType=1..}] run scoreboard players add @s effectLostWarped 1
execute as @a[scores={effectLostWarped=100..},tag=tagger] run give @s warped_fungus_on_a_stick{Floating:1b,Enchantments:[{}],display:{Name:'[{"text":"Runner Revealer","italic":false}]'}}
execute as @a[scores={effectLostWarped=100..},tag=tagger] run scoreboard players set @s effectLostWarped 0

## This shows how much time is left to use your effect on the xp bar
execute as @a[scores={effectTimer=400..}] run xp set @s 20 levels
execute as @a[scores={effectTimer=400..}] run xp set @s 61 points

execute as @a[scores={effectTimer=380}] run xp set @s 19 levels
execute as @a[scores={effectTimer=380}] run xp set @s 54 points

execute as @a[scores={effectTimer=360}] run xp set @s 18 levels
execute as @a[scores={effectTimer=360}] run xp set @s 42 points

execute as @a[scores={effectTimer=340}] run xp set @s 17 levels
execute as @a[scores={effectTimer=340}] run xp set @s 36 points

### 29.6
execute as @a[scores={effectTimer=320}] run xp set @s 16 levels
execute as @a[scores={effectTimer=320}] run xp set @s 30 points

execute as @a[scores={effectTimer=300}] run xp set @s 15 levels
execute as @a[scores={effectTimer=300}] run xp set @s 26 points

execute as @a[scores={effectTimer=280}] run xp set @s 14 levels
execute as @a[scores={effectTimer=280}] run xp set @s 23 points

execute as @a[scores={effectTimer=260}] run xp set @s 13 levels
execute as @a[scores={effectTimer=260}] run xp set @s 20 points

### 17.4
execute as @a[scores={effectTimer=240}] run xp set @s 12 levels
execute as @a[scores={effectTimer=240}] run xp set @s 17 points

execute as @a[scores={effectTimer=220}] run xp set @s 11 levels
execute as @a[scores={effectTimer=220}] run xp set @s 15 points

### 12.5
execute as @a[scores={effectTimer=200}] run xp set @s 10 levels
execute as @a[scores={effectTimer=200}] run xp set @s 12 points

### 10.35
execute as @a[scores={effectTimer=180}] run xp set @s 9 levels
execute as @a[scores={effectTimer=180}] run xp set @s 10 points

### 8.4
execute as @a[scores={effectTimer=160}] run xp set @s 8 levels
execute as @a[scores={effectTimer=160}] run xp set @s 8 points

### 6.65
execute as @a[scores={effectTimer=140}] run xp set @s 7 levels
execute as @a[scores={effectTimer=140}] run xp set @s 6 points

### 5.1
execute as @a[scores={effectTimer=120}] run xp set @s 6 levels
execute as @a[scores={effectTimer=120}] run xp set @s 5 points

### 3.75
execute as @a[scores={effectTimer=100}] run xp set @s 5 levels
execute as @a[scores={effectTimer=100}] run xp set @s 4 points

### 2.6
execute as @a[scores={effectTimer=80}] run xp set @s 4 levels
execute as @a[scores={effectTimer=80}] run xp set @s 3 points

### 1.65
execute as @a[scores={effectTimer=60}] run xp set @s 3 levels
execute as @a[scores={effectTimer=60}] run xp set @s 2 points

### 0.9
execute as @a[scores={effectTimer=40}] run xp set @s 2 levels
execute as @a[scores={effectTimer=40}] run xp set @s 1 points

execute as @a[scores={effectTimer=20}] run xp set @s 1 levels
execute as @a[scores={effectTimer=20}] run xp set @s 0 points

execute as @a[scores={effectTimer=..0}] if score State gameStart matches 1.. run xp set @s 0 levels
execute as @a[scores={effectTimer=..0}] if score State gameStart matches 1.. run xp set @s 0 points

# This checks if an item is over water
execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] at @s if block ~ ~-1 ~ minecraft:water run data merge entity @s {Motion:[0.0,0.5,0.0]}

# This repeats fireworks over powerups if they have not been not picked up
execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] run scoreboard players add @s gameTimer 1


execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:polar_bear_spawn_egg"}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;15435844],FadeColors:[I;11250603]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:splash_potion",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;5394769],FadeColors:[I;15790320]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:elytra",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;12801229,15790320],FadeColors:[I;8073150]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;14602026]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:snowball",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;6719955]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:ender_eye",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworksCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4312372]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:bow",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworksCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;10853544]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] if score @s gameTimer >= FireworkCooldown Numbers run scoreboard players set @s gameTimer 0

# This resets the score for Sneak
scoreboard players set @a Sneak 0

# This is part of the eye of teleportation cooldown
execute as @a if score @s eyeTimer matches 1.. run scoreboard players remove @s eyeTimer 1

# Extras
## Upgrade Core Stuff
### Drop Core on Tagger Death
execute as @a[scores={deathDetector=1..,hp=1..}] run function tag_main:death_check/death

### Gamemode change when holding the core (Only for main hand)
execute if score State gameStart matches 1.. as @a[tag=!spectate,nbt={SelectedItem:{id:"minecraft:player_head",tag:{Floating:1b,display:{Name:'{"text":"Upgrade Module"}',Lore:['[{"text":"Drop this on a powerup to upgrade it"}]']},SkullOwner:{Id:[I;-1374341878,1114718937,-1530279877,-934795587],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVjMWMzZjdkMDljZTZjMGNiNDhlZDMwYjQ1OTZhNWMxNGZhZTc5ZGVmOGJmZDE0YTU5ZmMxOTM1NjAwYmM3YiJ9fX0="}]}}}}},tag=!op] run gamemode adventure @s

execute if score State gameStart matches 1.. as @a[tag=!spectate,nbt=!{SelectedItem:{id:"minecraft:player_head",tag:{Floating:1b,display:{Name:'{"text":"Upgrade Module"}',Lore:['[{"text":"Drop this on a powerup to upgrade it"}]']},SkullOwner:{Id:[I;-1374341878,1114718937,-1530279877,-934795587],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGVjMWMzZjdkMDljZTZjMGNiNDhlZDMwYjQ1OTZhNWMxNGZhZTc5ZGVmOGJmZDE0YTU5ZmMxOTM1NjAwYmM3YiJ9fX0="}]}}}}},tag=!op] run gamemode survival @s

### Powerup Upgrades

#### Supers KB stick
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{Floating:1b}}}] at @s if entity @e[nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Floating:1b}}},distance=..1] run function tag_main:powerup_upgrades/kb

#### Super Clamp Trap
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{Floating:1b}}}] at @s if entity @e[nbt={Item:{id:"minecraft:polar_bear_spawn_egg",Count:1b,tag:{Floating:1b}}},distance=..1] run function tag_main:powerup_upgrades/clamp_trap

#### Decoy Potion
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{Floating:1b}}}] at @s if entity @e[nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Floating:1b}}},distance=..1] run function tag_main:powerup_upgrades/decoy_potion

scoreboard players add @e[type=armor_stand,tag=decoy] gameTimer 1
kill @e[type=armor_stand,tag=decoy,scores={gameTimer=600..}]
team join runner @e[type=armor_stand,tag=decoy,team=]
execute as @a[nbt={ActiveEffects:[{Id:26},{Id:14}]}] at @s run function tag_main:powerup_functions/decoy_potion/decoy_potion
tag @a[nbt=!{ActiveEffects:[{Id:14}]}] remove hidden

#### Multi-Snowball of Destruction
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{Floating:1b}}}] at @s if entity @e[nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b}}},distance=..1] run function tag_main:powerup_upgrades/muti_snowball

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b,Enchantments:[{id:"minecraft:multishot"}]}}}] unless score @s gameTimer matches 6.. run scoreboard players add @s gameTimer 1
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b,Enchantments:[{id:"minecraft:multishot"}]}}}] if score @s gameTimer matches 5 at @s run function tag_main:powerup_functions/multishot_snowball/multishot_snowball


## Hit Detection
execute as @a[advancements={tag_main:on_hurt=true}] if entity @a[scores={damageDelt=1..}] run function tag_main:tag_function/tag_decide
execute as @a[advancements={tag_main:on_hurt_by_runner=true}] if entity @a[scores={damageDelt=1..}] run function tag_main:tag_function/tag_decide

execute as @a[tag=tagger] if score @s damageDelt matches ..0 run advancement revoke @a only tag_main:on_hurt
execute as @a[tag=runner] if score @s damageDelt matches ..0 run advancement revoke @a only tag_main:on_hurt_by_runner

execute as @a if score @s damageDelt matches 1.. run scoreboard players remove @s damageDelt 1

## Marker particle timer
execute as @e[type=marker,tag=particle,tag=processed,scores={gameTimer=1..}] run scoreboard players add @s markerTimer 1
execute as @e[type=marker,tag=particle,tag=processed,scores={gameTimer=1..}] at @s run function tag_main:particle
execute as @e[type=marker,tag=particle,tag=processed,scores={markerTimer=10..}] run scoreboard players set @s markerTimer 1
execute as @e[type=marker,tag=particle,tag=processed,scores={gameTimer=1..}] run scoreboard players remove @s gameTimer 1
execute as @e[type=marker,tag=particle,tag=processed,scores={gameTimer=..0}] run kill @s

## Gamemode Change
execute if score State gameStart matches ..0 if score Mode optionsSelect matches 1.. run function tag_main:game_options/mode_change

# This checks if the runners are done running
execute if score State gameStart matches 1 if score Timer gameTimer matches ..0 if score gameMode Toggle matches 1..2 run function tag_main:winners
execute if score State gameStart matches 1 if score Timer gameTimer matches ..0 if score gameMode Toggle matches 3 run function tag_main:winning/reverse_time_check
execute if score State gameStart matches 1 if score Timer gameTimer matches ..0 if score gameMode Toggle matches 4..5 run function tag_main:winners