scoreboard players set pow Rand 0
# This summons 4 armor stands and selects a random person to  randomly for the powerup to spawn
execute as @r run tag @s add posTemp

execute at @a[tag=posTemp] run summon armor_stand 0 -60 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS1,posRandom]}
execute at @a[tag=posTemp] run summon armor_stand 0 -60 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS2,posRandom]}
execute at @a[tag=posTemp] run summon armor_stand 0 -60 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS3,posRandom]}
execute at @a[tag=posTemp] run summon armor_stand 0 -60 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[POS4,posRandom]}

tag @e[tag=posRandom,sort=random,limit=1,type=armor_stand] add positioned

execute as @a[tag=posTemp] at @s run tp @e[tag=POS1] ~15 ~ ~15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS2] ~-15 ~ ~15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS3] ~-15 ~ ~-15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS4] ~-15 ~ ~-15


# This picks which powerup is choosen
## Range 0-27
function tag_main:random
scoreboard players operation pow Rand += num Rand
scoreboard players set num Rand 0

function tag_main:random
scoreboard players operation pow Rand += num Rand
scoreboard players set num Rand 0

function tag_main:random
scoreboard players operation pow Rand += num Rand
scoreboard players set num Rand 0

# This checks for any armor stand that is outside the world border and tp's them above the player
execute as @e[tag=spawn] store result score @s xDistance run data get entity @s Pos[0]
execute as @e[tag=spawn] store result score @s zDistance run data get entity @s Pos[2]

execute as @e[tag=positioned] store result score @s xDistance run data get entity @s Pos[0]
execute as @e[tag=positioned] store result score @s zDistance run data get entity @s Pos[2]

execute if score worldBorderSize Numbers matches ..0 store result score worldBorderSize Numbers run worldborder get

scoreboard players operation halfWBS Numbers = worldBorderSize Numbers
scoreboard players operation halfWBS Numbers /= Two Numbers

scoreboard players set nHalfWBS Numbers 0
scoreboard players operation nHalfWBS Numbers -= worldBorderSize Numbers
scoreboard players operation nHalfWBS Numbers /= Two Numbers

scoreboard players operation @e[tag=positioned] xDistance -= @e[tag=spawn] xDistance
scoreboard players operation @e[tag=positioned] zDistance -= @e[tag=spawn] zDistance

execute if score @e[tag=positioned,limit=1] zDistance >= halfWBS Numbers run tp @e[tag=positioned] @e[tag=posTemp,limit=1]
execute if score @e[tag=positioned,limit=1] zDistance <= nHalfWBS Numbers run tp @e[tag=positioned] @e[tag=posTemp,limit=1]
execute if score @e[tag=positioned,limit=1] xDistance >= halfWBS Numbers run tp @e[tag=positioned] @e[tag=posTemp,limit=1]
execute if score @e[tag=positioned,limit=1] xDistance <= nHalfWBS Numbers run tp @e[tag=positioned] @e[tag=posTemp,limit=1]

# This is when the powerup and Firework spawns
## Item 1 (Wooden Sword)
execute if score pow Rand matches 14..15 at @e[tag=positioned] run summon minecraft:item ~ 280 ~ {Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Floating:1b,Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"knockback",lvl:5}]}}}
execute if score pow Rand matches 14..15 at @e[tag=positioned] run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}

## Item 2 (Clamp Trap)
execute if score pow Rand matches 8..10 at @e[tag=positioned] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:polar_bear_spawn_egg",Count:1b,tag:{Floating:1b,EntityTag:{id:"minecraft:area_effect_cloud",Tags:[ClampTrap],Particle:"ambient_entity_effect 1 0 0 1",Age:0,WaitTime:0,Duration:6000,Radius:4.5f},display:{Name:'[{"text":"Clamp Trap","italic":false}]',Lore:['[{"text":"Right click on any block to set this trap up about 5","italic":false}]','[{"text":"block radius... But be careful, you may walk into your","italic":false}]','[{"text":"own trap...","italic":false}]']}}}}
execute if score pow Rand matches 8..10 at @e[tag=positioned] run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;15435844],FadeColors:[I;11250603]}],Flight:1}}}}

## Item 3 (Potion of Invisibility)
execute if score pow Rand matches 0..7 at @e[tag=positioned] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Floating:1b,Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:300,Ambient:1b}],display:{Name:'"Potion of Invisibility"',Lore:['[{"text":"This gives the user invisibility when applied, removing the glowing effect as well for a short time"}]']}}}}
execute if score pow Rand matches 0..7 at @e[tag=positioned] run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11250603],FadeColors:[I;15790320]}],Flight:2}}}}

## Item 4 (Elytra of Soaring)
execute if score pow Rand matches 16..18 at @e[tag=positioned] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;12801229,15790320],FadeColors:[I;8073150]}],Flight:2}}}}
execute if score pow Rand matches 16..18 at @e[tag=positioned] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:elytra",Count:1b,tag:{Floating:1b,display:{Name:'[{"text":"Elytra of Soaring","italic":false}]',Lore:['[{"text":"Put this elytra on and fly up in the air","italic":false}]','[{"text":"Maybe you can catch some people off-guard","italic":false}]']}}}}

## Item 5 (Clock of Destiny)
execute if score pow Rand matches 22..27 at @e[tag=positioned] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:clock",Count:1,tag:{Floating:1b,display:{Name:'[{"text":"Clock of Destiny","italic":false}]',Lore:['[{"text":"Hold shift while holding it","italic":false}]','[{"text":"Runners decrease the timer by 30 seconds","italic":false}]','[{"text":"Taggers increase the timer by 30 seconds","italic":false}]']},Enchantments:[{}]}}}
execute if score pow Rand matches 22..27 at @e[tag=positioned] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;14602026]}],Flight:2}}}}

## Item 6 (Snowball of Freezing)
execute if score pow Rand matches 11..13 at @e[tag=positioned] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b,display:{Name:'[{"text":"Snowball of Destruction","italic":false}]',Lore:['[{"text":"It\'s so cold that blocks around it break too","italic":false}]']},Enchantments:[{}]}}}
execute if score pow Rand matches 11..13 at @e[tag=positioned] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;6719955]}],Flight:2}}}}

## Item 7 (Eye of Teleportation)
execute if score pow Rand matches 19..21 at @e[tag=positioned] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:ender_eye",Count:1b,tag:{display:{Name:'[{"text":"Eye of Teleportation","italic":false}]',Lore:['[{"text":"This Powerup allows you to tp to any","italic":false}]','[{"text":"person randomly","italic":false}]']},Enchantments:[{}],Floating:1b}}}
execute if score pow Rnad matches 19..21 at @e[tag=positioned] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4312372]}],Flight:2}}}}

### This rolls the chance for an anvil to fall (Can roll between 0-9)
function tag_main:random
scoreboard players operation anvil Rand += num Rand
scoreboard players set num Rand 0

execute if score anvil Rand matches 7..9 at @e[tag=positioned] run summon minecraft:falling_block ~ ~200 ~ {BlockState:{Name:"anvil"}}

# This starts the cooldown and kill the position armorstands
scoreboard players set PowerupTimer gameTimer 0

kill @e[tag=posRandom]

#When No Anvil is spawning
execute if score anvil Rand matches 0..6 if score pow Rand matches 14..15 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#FF71A2"}

execute if score anvil Rand matches 0..6 if score pow Rand matches 8..10 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"gold"}

execute if score anvil Rand matches 0..6 if score pow Rand matches 0..7 run tellraw @a "A Powerup has spawned somewhere"

execute if score anvil Rand matches 0..6 if score pow Rand matches 16..18 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"light_purple"}

execute if score anvil Rand matches 0..6 if score pow Rand matches 22..27 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"yellow"}

execute if score anvil Rand matches 0..6 if score pow Rand matches 11..13 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"aqua"}

execute if score anvil Rand matches 0..6 if score pow Rand matches 19..21 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"green"}

# With an Anvil spawning
execute if score anvil Rand matches 7..9 if score pow Rand matches 14..15 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#FF76A5"}

execute if score anvil Rand matches 7..9 if score pow Rand matches 8..10 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#FFC54D"}

execute if score anvil Rand matches 7..9 if score pow Rand matches 0..7 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#B8B8B8"}

execute if score anvil Rand matches 7..9 if score pow Rand matches 16..18 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#FF8DFF"}

execute if score anvil Rand matches 7..9 if score pow Rand matches 22..27 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#FFFF90"}

execute if score anvil Rand matches 7..9 if score pow Rand matches 11..13 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#88FFFF"}

execute if score anvil Rand matches 7..9 if score pow Rand matches 19..21 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"#BDFF9C"}


scoreboard players set anvil Rand 0

scoreboard players set pow Rand 0

tag @a remove posTemp