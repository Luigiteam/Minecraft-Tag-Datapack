# Pre-Game
execute if score State gameStart matches 0 at @e[tag=spawn] run tp @a[distance=9..] ~ ~2 ~
execute if score State gameStart matches 0 run gamemode adventure @a
execute if score State gameStart matches 0 run team join neutral @a

# This detirmines the nearest player's y distance and displays it on the taggers screen
execute as @e[tag=tagger] store result score @s yDistance run data get entity @s Pos[1]
execute at @e[tag=tagger] as @e[tag=runner,type=armor_stand,sort=nearest,limit=1] store result score @s yDistance run data get entity @s Pos[1]

scoreboard players operation yResults yDistance = @e[tag=tagger] yDistance
execute at @e[tag=tagger] as @e[tag=runner,type=armor_stand,sort=nearest,limit=1] run scoreboard players operation yResults yDistance -= @s yDistance

execute as @e[tag=tagger] if score yResults yDistance matches ..-1 run title @s actionbar {"text": "The nearest runner is above you"}
execute as @e[tag=tagger] if score yResults yDistance matches 0 run title @s actionbar {"text": "The nearest runner is the same level as you"}
execute as @e[tag=tagger] if score yResults yDistance matches 1.. run title @s actionbar {"text": "The nearest runner is under you"}

# This is some trap stuff
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

# This makes the powerups glow in their color

## Wooden Sword glow color
team join Red @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",tag:{Floating:1b}}}]

## Clap Trap
team join Yellow @e[type=item,nbt={Item:{id:"minecraft:polar_bear_spawn_egg"}}]

# This is some tagger stuff
execute if score State gameStart matches 1 run effect give @a minecraft:glowing 1 0 true
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] run data merge entity @s {Glowing:1b}

execute as @a[tag=tagger] if score @s hitDetect > Hit0 hitDetect at @s anchored eyes facing entity @e[tag=!tagger,sort=nearest,limit=1,type=player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function tag_main:tag_swap
scoreboard players set @a hitDetect 0

# This adds to the Runner's timer
execute if score State gameStart matches 1 if score Timer gameTimer < EndTimer gameTimer run scoreboard players add Timer gameTimer 1

# This checks for the timer of taggers so they can get speed after 10 seconds (200 ticks)
scoreboard players set @a[tag=!tagger] gameTimer 0

execute if score State gameStart matches 1 as @a[tag=tagger] if score @s gameTimer < SpeedTimer Numbers run scoreboard players add @s gameTimer 1

execute if score PowerUps Toggle matches 1 if score State gameStart matches 1 if score PowerupTimer gameTimer < PowerupCooldown Numbers run scoreboard players add PowerupTimer gameTimer 1
execute if score PowerupTimer gameTimer >= PowerupCooldown Numbers run function tag_main:powerups

execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer < SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 0 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 1 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= LastRound gameTimer run effect give @s speed 1 2 true

# This checks if an item is over water
execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] at @s if block ~ ~-1 ~ minecraft:water run data merge entity @s {Motion:[0.0,1.5,0.0]}

# This repeats fireworks over powerups if they have not been not picked up
execute as @e[type=item,nbt={Item:{tag:{Floating:1b}}}] run scoreboard players add @s gameTimer 1

execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword"}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon firework_rocket ~ ~5 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:polar_bear_spawn_egg"}}] at @s if score @s gameTimer >= FireworkCooldown Numbers run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11250603],FadeColors:[I;15790320]}],Flight:2}}}}

# This checks if the runners are done running
execute if score State gameStart matches 1 if score Timer gameTimer >= EndTimer gameTimer run function tag_main:winners