# Pre-Game
execute at @e[tag=spawn] run worldborder center ~ ~
worldborder set 300 0
execute if score State gameStart matches 0 at @e[tag=spawn] run tp @a[distance=9..] ~ ~2 ~
execute if score State gameStart matches 0 run gamemode adventure @a
execute if score State gameStart matches 0 run team join neutral @a

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
team join Red @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:0.0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}]

# This is some tagger stuff
execute if score State gameStart matches 1 run effect give @a[tag=tagger] minecraft:glowing 1 0 true
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] run data merge entity @s {Glowing:1b}

execute as @a[tag=tagger] if score @s hitDetect > Hit0 hitDetect at @s anchored eyes facing entity @e[tag=!tagger,sort=nearest,limit=1,type=player] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function tag_main:tag_swap
scoreboard players set @a hitDetect 0

# This adds to the Runner's timer
execute if score State gameStart matches 1 if score Timer gameTimer < EndTimer gameTimer run scoreboard players add Timer gameTimer 1

# This checks for the timer of taggers so they can get speed after 10 seconds (50 ticks)
scoreboard players set @a[tag=!tagger] gameTimer 0

execute if score State gameStart matches 1 as @a[tag=tagger] if score @s gameTimer < SpeedTimer Numbers run scoreboard players add @s gameTimer 1

execute if score State gameStart matches 1 if score PowerupTimer gameTimer < PowerupCooldown Numbers run scoreboard players add PowerupTimer gameTimer 1
execute if score PowerupTimer gameTimer >= PowerupCooldown Numbers run function tag_main:powerups

execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer < SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 0 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= SecondRound gameTimer if score Timer gameTimer < LastRound gameTimer run effect give @s speed 1 1 true
execute as @a[tag=tagger] if score @s gameTimer >= SpeedTimer Numbers if score Timer gameTimer >= LastRound gameTimer run effect give @s speed 1 2 true

# This checks if an item is over water
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Floating:1b}}}] at @s if block ~ ~-1 ~ minecraft:water run data merge entity @s {Motion:[0.0,1.5,0.0]}

# This repeats fireworks over powerups if they have not been not picked up

# This checks if the runners are done running
execute if score State gameStart matches 1 if score Timer gameTimer >= EndTimer gameTimer run function tag_main:winners