scoreboard players enable @a effectTrigger

execute at @e[tag=spawn] if score State gameStart matches 1.. run tp @e[type=player,distance=..20] @e[tag=tpSpawn,limit=1,sort=nearest]

kill @e[nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}}]

execute if score State gameStart matches 1 if score Insane Toggle matches 1 run scoreboard players add tnt gameTimer 1
execute if score tnt gameTimer matches 300.. as @a at @s run summon tnt ~ ~ ~ {Fuse:60s}
execute if score tnt gameTimer matches 300.. run scoreboard players set tnt gameTimer 0

# This is some code that needs to run all the time
execute if score State gameStart matches 0.. run effect give @a saturation 1 255 true

execute if score State gameStart matches 1.. run effect give @a[nbt=!{ActiveEffects:[{Id:14}]}] minecraft:glowing 1 0 true

# Not necisary, but gives some nice flare
bossbar set runnertimer name {"text": "The tagger is ", "extra": [{"selector":"@a[tag=tagger]"}]}
title @a[tag=runner] actionbar {"text": "The tagger is ", "extra":[{"selector":"@e[tag=tagger]"}]}

execute if score Timer gameTimer matches 1201.. run bossbar set runnertimer color yellow

execute if score Timer gameTimer matches 1200 run bossbar set runnertimer color red
execute if score Timer gameTimer matches 1200 run tellraw @a "1 Minute Remaining"

# Pre-Game
execute if score State gameStart matches 0 at @e[tag=spawn] run tp @a[distance=9..] ~ ~2 ~
execute if score State gameStart matches 0 run gamemode adventure @a
execute if score State gameStart matches 0 run team join neutral @a

# This detirmines the nearest player's y distance and displays it on the taggers screen
execute as @e[tag=tagger] store result score @s yDistance run data get entity @s Pos[1]
execute at @e[tag=tagger] as @e[tag=runner,type=armor_stand,sort=nearest,limit=1] store result score @s yDistance run data get entity @s Pos[1]

scoreboard players operation yResults yDistance = @e[tag=tagger] yDistance
execute at @e[tag=tagger] as @e[tag=runner,type=armor_stand,sort=nearest,limit=1] run scoreboard players operation yResults yDistance -= @s yDistance

execute if score yDistance Toggle matches 1 as @e[tag=tagger] if score yResults yDistance matches ..-1 run title @s actionbar {"text": "The nearest runner is above you"}
execute if score yDistance Toggle matches 1 as @e[tag=tagger] if score yResults yDistance matches 0 run title @s actionbar {"text": "The nearest runner is the same level as you"}
execute if score yDistance Toggle matches 1 as @e[tag=tagger] if score yResults yDistance matches 1.. run title @s actionbar {"text": "The nearest runner is under you"}

# This is the fundunmentals for the Elytra of Soaring

## Detection & Effects

execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run item replace entity @s armor.chest with minecraft:elytra{Floating:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],display:{Name:'[{"text":"Elytra of Soaring","italic":false}]',Lore:['[{"text":"Put this elytra on and fly up in the air","italic":false}]','[{"text":"Maybe you can catch some people off-guard","italic":false}]']}}

execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Floating:1b}}]},scores={airTime=..0}] run tag @s add airborne
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Floating:1b}}]},scores={airTime=..0}] run tag @s add elytraKit

execute as @a[tag=elytraKit] run effect give @s levitation 2 30 true
execute at @a[tag=elytraKit] run playsound entity.firework_rocket.launch player @a ~ ~ ~

tag @a[tag=elytraKit] remove elytraKit

scoreboard players add @a[tag=airborne] airTime 1

execute at @a[tag=airborne,scores={airTime=1..50}] run particle firework ~ ~-1 ~ 0 1 0 0.07 5 force @a 

execute as @e[tag=airborne,nbt={OnGround:1b}] if score @s airTime matches 50.. run item replace entity @s armor.chest with air
execute as @e[tag=airborne,nbt={OnGround:1b}] if score @s airTime matches 50.. run tag @s remove airborne
execute as @e[tag=!airborne,nbt={OnGround:1b}] if score @s airTime matches 50.. run scoreboard players set @s airTime 0

scoreboard players set @a[nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Floating:1b}}]}] airTime 0

# This is how the Snowball works
execute at @e[type=armor_stand,tag=snowballs] unless entity @e[type=snowball,distance=..2] run fill ~2 ~3 ~-2 ~-2 ~-3 ~2 air destroy
kill @e[type=armor_stand,tag=snowballs]
execute at @e[type=snowball,nbt={Item:{tag:{Floating:1b}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["snowballs"],Invisible:1b, Marker:1b}
# This is some clamp trap stuff
scoreboard players set @e[tag=ClampTrap] trapDestroy 0

## This places the Clamp Trap
execute as @e[tag=ClampTrap] at @s run tp @s ~ ~-2 ~
execute as @e[tag=ClampTrap] run tag @s add Trap
execute as @e[tag=ClampTrap] run tag @s remove ClampTrap

## This activates the trap when a person is above it
scoreboard players add @e[tag=Trap] gameTimer 1
execute as @e[tag=Trap] if score @s gameTimer >= TrapCooldown Numbers run data merge entity @s {Particle:"block minecraft:air 1 0 0 1"}
execute as @e[tag=Trap] if score @s gameTimer >= TrapCooldown Numbers at @s if entity @e[type=player,distance=..5] run scoreboard players set @s trapDestroy 1
execute as @e[tag=Trap] if score @s gameTimer >= TrapCooldown Numbers at @s if entity @e[type=player,distance=..5] at @e[type=player,distance=..5] run summon minecraft:evoker_fangs ~ ~ ~ {Glowing:1b}
execute as @e[tag=Trap] if score @s gameTimer >= TrapCooldown Numbers at @s run effect give @e[distance=..5] minecraft:slowness 10 10
kill @e[scores={trapDestroy=1..},tag=Trap]

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

# This subtracts the Runner's timer
execute if score State gameStart matches 1 run scoreboard players remove Timer gameTimer 1
execute store result bossbar runnertimer value run scoreboard players get Timer gameTimer 
# This checks for the timer of taggers so they can get speed after 10 seconds (200 ticks)
scoreboard players set @a[tag=!tagger] gameTimer 0

execute if score State gameStart matches 1 as @a[tag=tagger] if score @s gameTimer < SpeedTimer Numbers run scoreboard players add @s gameTimer 1

execute if score PowerUps Toggle matches 1 if score State gameStart matches 1 if score PowerupTimer gameTimer < PowerupCooldown Numbers run scoreboard players add PowerupTimer gameTimer 1
execute if score PowerupTimer gameTimer >= PowerupCooldown Numbers run function tag_main:powerups

execute as @a[tag=tagger] if score Insane Toggle matches 0 if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer > SecondRound gameTimer if score Timer gameTimer > LastRound gameTimer run effect give @s speed 1 0 true
execute as @a[tag=tagger] if score Insane Toggle matches 0 if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer <= SecondRound gameTimer if score Timer gameTimer > LastRound gameTimer run effect give @s speed 1 1 true
execute as @a[tag=tagger] if score Insane Toggle matches 0 if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer <= LastRound gameTimer run effect give @s speed 1 2 true

execute as @a[tag=tagger] if score Insane Toggle matches 0 if score @s gameTimer >= SpeedTimer Numbers run effect give @s dolphins_grace 1 0 true

execute as @a[tag=tagger] if score Insane Toggle matches 1 if score @s gameTimer >= SpeedTimer Numbers run effect give @s speed 3 0 true
execute as @a[tag=tagger] if score Insane Toggle matches 1 if score @s gameTimer >= SpeedTimer Numbers run effect give @s dolphins_grace 2 0 true

execute as @a[tag=runner] if score Insane Toggle matches 1 run effect give @s speed 1 0 true
execute as @a[tag=runner] if score Insane Toggle matches 1 run effect give @s dolphins_grace 1 0 true

# This gives effects to everyone
execute as @a[scores={effectType=1..,effectTimer=..400},tag=noEffect] if score State gameStart matches 1.. run scoreboard players add @s effectTimer 1
execute as @a[tag=!noEffect,scores={effectUse=1..}] run tellraw @s "You cannot use this right now"
execute as @a[tag=noEffect,scores={effectTimer=..399,effectUse=1..}] run tellraw @s "You cannot use this right now"
tellraw @a[scores={effectTimer=400}] "You can use your effect now!"
execute as @a[tag=noEffect,scores={effectTimer=400..,effectUse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}}] run function tag_main:effect
scoreboard players set @a effectUse 0

## This gives players their carrot on a stick for effects
execute if score State gameStart matches 1.. as @a[scores={effectType=1..},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Floating:1b}}]}] run give @s carrot_on_a_stick{Floating:1b,Enchantments:[{}],Name:'[{"text":"Effect Activator","italic":false}]'}

## This checks if an individual has no effect
execute as @a[tag=!noEffect,scores={effectType=1},nbt=!{ActiveEffects:[{Id:8}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=2},nbt=!{ActiveEffects:[{Id:11}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=3},nbt=!{ActiveEffects:[{Id:3}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=4},nbt=!{ActiveEffects:[{Id:16}]}] run tag @s add noEffect
execute as @a[tag=!noEffect,scores={effectType=5},nbt=!{ActiveEffects:[{Id:25}]}] run tag @s add noEffect

# This checks if an item is over water
execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] at @s if block ~ ~-1 ~ minecraft:water run data merge entity @s {Motion:[0.0,1.0,0.0]}

# This repeats fireworks over powerups if they have not been not picked up
execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] run scoreboard players add @s gameTimer 1


execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:polar_bear_spawn_egg"}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;15435844],FadeColors:[I;11250603]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:splash_potion",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11250603],FadeColors:[I;15790320]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:elytra",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;12801229,15790320],FadeColors:[I;8073150]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;14602026]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:snowball",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;6719955]}],Flight:2}}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:ender_eye",tag:{Floating:1b}}}] at @s if score @s gameTimer >= FireworksCooldown Numbers run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4312372]}],Flight:2}}}}


execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] if score @s gameTimer >= FireworkCooldown Numbers run scoreboard players set @s gameTimer 0

# This resets the score for Sneak
scoreboard players set @a Sneak 0

# This checks if the runners are done running
execute if score State gameStart matches 1 if score Timer gameTimer matches ..0 run function tag_main:winners