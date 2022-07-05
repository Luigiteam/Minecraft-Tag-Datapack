# This summons 4 armor stands and selects a random person to  randomly for the powerup to spawn
execute as @r run tag @s add posTemp

execute at @a[tag=posTemp] run summon armor_stand 0 -64 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS1,sim]}
execute at @a[tag=posTemp] run summon armor_stand 0 -64 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS2,sim]}
execute at @a[tag=posTemp] run summon armor_stand 0 -64 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS3,sim]}
execute at @a[tag=posTemp] run summon armor_stand 0 -64 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS4,sim]}

execute at @e[tag=POS1] run tag @e[distance=..5,sort=random,limit=1,type=armor_stand] add positioned

execute as @a[tag=posTemp] at @s run tp @e[tag=POS1] ~15 ~ ~15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS2] ~-15 ~ ~15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS3] ~-15 ~ ~-15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS4] ~-15 ~ ~-15


# This picks which powerup is choosen
#execute at @e[tag=Spawn] run tag @e[tag=!Spawn,distance=..9,sort=random,limit=1] add choosen
tag @e[tag=Random_1] add choosen

execute if entity @e[tag=Random_1,tag=choosen] run scoreboard players set Type Powerup 1
execute if entity @e[tag=Random_2,tag=choosen] run scoreboard players set Type Powerup 2
execute if entity @e[tag=Random_3,tag=choosen] run scoreboard players set Type Powerup 1
execute if entity @e[tag=Random_4,tag=choosen] run scoreboard players set Type Powerup 2

# This checks for any armor stand that is outside the world border and tp's them above the player
execute as @e[tag=spawn] store result score @s xDistance run data get entity @s Pos[0]
execute as @e[tag=spawn] store result score @s zDistance run data get entity @s Pos[2]

execute as @e[tag=positioned] store result score @s xDistance run data get entity @s Pos[0]
execute as @e[tag=positioned] store result score @s zDistance run data get entity @s Pos[2]

scoreboard players operation @e[tag=positioned] xDistance -= @e[tag=spawn] xDistance
scoreboard players operation @e[tag=positioned] zDistance -= @e[tag=spawn] zDistance

tp @e[tag=positioned,scores={zDistance=62..}] @e[tag=posTemp,limit=1]
tp @e[tag=positioned,scores={zDistance=..-62}] @e[tag=posTemp,limit=1]
tp @e[tag=positioned,scores={xDistance=62..}] @e[tag=posTemp,limit=1]
tp @e[tag=positioned,scores={xDistance=..-62}] @e[tag=posTemp,limit=1]

# This is when the powerup and Firework spawns
scoreboard players set Type Powerup 2
## Item 1 (Wooden Sword)
execute if score Type Powerup matches 1 at @e[tag=positioned] run summon minecraft:item ~ 280 ~ {Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Glowing:1b,Floating:1b,Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"knockback",lvl:5}]}}}
execute if score Type Powerup matches 1 at @e[tag=positioned] run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}

## Item 2 (Clamp Trap)
execute if score Type Powerup matches 2 at @e[tag=positioned] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:polar_bear_spawn_egg",Count:1b,tag:{Glowing:1b,Floating:1b,EntityTag:{id:"minecraft:area_effect_cloud",Tags:[ClampTrap],Particle:"ambient_entity_effect 1 0 0 1",Age:0,WaitTime:0,Duration:6000,Radius:4.5f},display:{Name:'[{"text":"Clamp Trap","italic":false}]',Lore:['[{"text":"Right click on any block to set this trap up about 5","italic":false}]','[{"text":"block radius... But be careful, you may walk into your","italic":false}]','[{"text":"own trap...","italic":false}]']}}}}
execute if score Type Powerup matches 2 at @e[tag=positioned] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11250603],FadeColors:[I;15790320]}],Flight:2}}}}

# This starts the cooldown and kill the position armorstands
scoreboard players set PowerupTimer gameTimer 0

kill @e[tag=POS1]
kill @e[tag=POS2]
kill @e[tag=POS3]
kill @e[tag=POS4]

tellraw @a {"text": "A Powerup has spawn somewhere"}