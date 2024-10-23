scoreboard players set pow Rand 0
# This summons 4 armor stands and selects a random person to randomly for the powerup to spawn
execute as @r run tag @s add posTemp

execute at @a[tag=posTemp] run summon marker 0 -60 0 {Tags:[POS1,posRandom]}
execute at @a[tag=posTemp] run summon marker 0 -60 0 {Tags:[POS2,posRandom]}
execute at @a[tag=posTemp] run summon marker 0 -60 0 {Tags:[POS3,posRandom]}
execute at @a[tag=posTemp] run summon marker 0 -60 0 {Tags:[POS4,posRandom]}

tag @e[tag=posRandom,sort=random,limit=1,type=marker] add positioned

execute as @a[tag=posTemp] at @s run tp @e[tag=POS1,type=marker] ~15 ~ ~15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS2,type=marker] ~-15 ~ ~15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS3,type=marker] ~15 ~ ~-15
execute as @a[tag=posTemp] at @s run tp @e[tag=POS4,type=marker] ~-15 ~ ~-15


# This picks which powerup is choosen
## Range 0-27
execute store result score pow Rand run random value 0..27

# This checks for any armor stand that is outside the world border and tp's them above the player
execute as @s store result score @s xDistance run data get entity @s Pos[0]
execute as @s store result score @s zDistance run data get entity @s Pos[2]

execute as @e[tag=positioned,type=marker] store result score @s xDistance run data get entity @s Pos[0]
execute as @e[tag=positioned,type=marker] store result score @s zDistance run data get entity @s Pos[2]

execute if score worldBorderSize Numbers matches ..0 store result score worldBorderSize Numbers run worldborder get

scoreboard players operation halfWBS Numbers = worldBorderSize Numbers
scoreboard players operation halfWBS Numbers /= 2 Numbers

scoreboard players set nHalfWBS Numbers 0
scoreboard players operation nHalfWBS Numbers -= worldBorderSize Numbers
scoreboard players operation nHalfWBS Numbers /= 2 Numbers

scoreboard players operation @e[tag=positioned] xDistance -= @e[tag=tpSpawn] xDistance
scoreboard players operation @e[tag=positioned] zDistance -= @e[tag=tpSpawn] zDistance

execute if score @e[tag=positioned,limit=1,type=marker] zDistance >= halfWBS Numbers run tp @e[tag=positioned,type=marker] @a[tag=posTemp,limit=1]
execute if score @e[tag=positioned,limit=1,type=marker] zDistance <= nHalfWBS Numbers run tp @e[tag=positioned,type=marker] @a[tag=posTemp,limit=1]
execute if score @e[tag=positioned,limit=1,type=marker] xDistance >= halfWBS Numbers run tp @e[tag=positioned,type=marker] @a[tag=posTemp,limit=1]
execute if score @e[tag=positioned,limit=1,type=marker] xDistance <= nHalfWBS Numbers run tp @e[tag=positioned,type=marker] @a[tag=posTemp,limit=1]

# This is when the powerup and Firework spawn
## Item 1 (Wooden Sword)
execute if score pow Rand matches 13..15 if score kbStick Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:wooden_sword",count:1b,components:{"minecraft:custom_data":{Floating:1b,Upgrade:0b},"minecraft:enchantments":{levels:{"minecraft:knockback":5}},"minecraft:damage":58,"minecraft:custom_name":'{"text":"Knockback Stick","color":"red","italic":false}'}}}
execute if score pow Rand matches 13..15 if score kbStick Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;11743532], fade_colors:[I;14188952]}], flight_duration:2b}}}}

## Item 2 (Fang Trap)
execute if score pow Rand matches 10..12 if score fangTrap Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:polar_bear_spawn_egg",count:1b,components:{"minecraft:custom_data":{Floating:1b,Upgrade:0b},"minecraft:custom_name":'{"text":"Fang Trap","color":"gold","italic":false}',"minecraft:entity_data":{id:"area_effect_cloud",Tags:[ClampTrap],Particle:{type:"entity_effect",color:[1f,.7f,0f,1f]},Age:0,WaitTime:0,Duration:6000,Radius:4.5f}, "minecraft:lore":['[{"text":"Right click on any block to set this trap up about 5","italic":false}]','[{"text":"block radius... But be careful, you may walk into your","italic":false}]','[{"text":"own trap...","italic":false}]']}}}

execute if score pow Rand matches 10..12 if score fangTrap Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;15435844], fade_colors:[I;11250603]}], flight_duration:2b}}}}

## Item 3 (Potion of Invisibility)
execute if score pow Rand matches 16..18 if score potionInvis Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_data":{Floating:1b,Upgrade:1b},"minecraft:custom_name":'{"text":"Potion of Invisibility","italic":false,"color": "gray"}',"minecraft:lore":['[{"text":"This gives the user invisibility when applied,"}]','[{"text":"removing the glowing effect as well for a short time"}]'],"minecraft:potion_contents":{custom_color:16777215,custom_effects:[{id:"invisibility",duration:310,ambient:1b,show_particles:0b}]}}}}
execute if score pow Rand matches 16..18 if score potionInvis Toggle matches 1 at @e[tag=positioned,type=marker] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;5394769], fade_colors:[I;15790320]}], flight_duration:2b}}}}

## Item 4 (Elytra of Soaring)
execute if score pow Rand matches 19..22 if score elytra Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:elytra",components:{"minecraft:custom_data":{Floating:1b,Upgrade:0b},"minecraftw:custom_name":'[{"text":"Elytra of Soaring","italic":false,"color":"dark_purple"}]',"minecraft:lore":['[{"text":"Put this elytra on and fly up in the air","italic":false}]','[{"text":"Maybe you can catch some people off-guard","italic":false}]']}}}
execute if score pow Rand matches 19..22 if score elytra Toggle matches 1 at @e[tag=positioned,type=marker] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;12801229,15790320], fade_colors:[I;8073150]}], flight_duration:2b}}}}

## Item 5 (Clock of Destiny)

execute if score pow Rand matches 23..27 if score clock Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~2 ~ {Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{Floating:1b},"minecraft:enchantment_glint_override":1b,"minecraft:custom_name":'[{"text":"Clock of Destiny","italic":false,"color":"yellow"}]',"minecraft:lore":['[{"text":"Right click this to...","italic":false}]','[{"text":"Runners decrease the timer by 30 seconds","italic":false}]','[{"text":"Taggers increase the timer by 30 seconds","italic":false}]'],"minecraft:food":{nutrition:0,saturation:0.0,can_always_eat:true},"minecraft:consumable":{consume_seconds:3.0,animation:"bow",sound:"block.note_block.pling",has_consume_particles:false,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:luck",amplifier:1,duration:100,show_particles:0b,show_icon:0b}]},{type:"minecraft:play_sound",sound:"block.conduit.activate"}]},"minecraft:use_cooldown":{seconds:5}}}}
execute if score pow Rand matches 23..27 if score clock Toggle matches 1 at @e[tag=positioned,type=marker] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711485],fade_colors:[I;16711485]}], flight_duration:2b}}}}

## Item 6 (Snowball of Destruction)
execute if score pow Rand matches 7..9 if score snowball Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:snowball",components:{"minecraft:custom_data":{Floating:1b,Upgrade:0b},"minecraft:enchantment_glint_override":1b,"minecraft:custom_name":'[{"text":"Snowball of Destruction","italic":false,"color":"aqua"}]',"minecraft:lore":['[{"text":"It\'s so cold that blocks around it break too","italic":false}]']}}}
execute if score pow Rand matches 7..9 if score snowball Toggle matches 1 at @e[tag=positioned,type=marker] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;6719955]}], flight_duration:1b}}}}

## Item 7 (Eye of Teleportation)
execute if score pow Rand matches 0..3 if score eyeTeleport Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:ender_eye",components:{"minecraft:custom_data":{Floating:1b,Upgrade:0b},"minecraft:custom_name":'[{"text":"Eye of Teleportation","italic":false,"color":"green"}]',"minecraft:lore":['[{"text":"This Powerup allows you to tp to any","italic":false}]','[{"text":"person randomly","italic":false}]'],"minecraft:enchantment_glint_override":1b,"minecraft:food":{nutrition:2,saturation:0.0,eat_seconds:1000000,can_always_eat:true}}}}
execute if score pow Rand matches 0..3 if score eyeTeleport Toggle matches 1 at @e[tag=positioned,type=marker] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;8453919]}], flight_duration:2b}}}}

## Item 8 (Punching Pow)
execute if score pow Rand matches 4..6 if score punchBow Toggle matches 1 at @e[tag=positioned,type=marker] run summon minecraft:item ~ ~280 ~ {Item:{id:"minecraft:bow",components:{"minecraft:custom_data":{Floating:1b,Upgrade:0b},"minecraft:damage":379,"minecraft:custom_name":'[{"text":"Punching Bow","italic":false}]',"minecraft:enchantments":{punch:2}}}}
execute if score pow Rand matches 4..6 if score punchBow Toggle matches 1 at @e[tag=positioned,type=marker] run summon item ~ ~280 ~ {Item:{id:"minecraft:arrow",count:5b}}
execute if score pow Rand matches 4..6 if score punchBow Toggle matches 1 at @e[tag=positioned,type=marker] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;13882323]}], flight_duration:2b}}}}

# This starts the cooldown and kill the position armorstands
execute if score pow Rand matches 13..15 if score kbStick Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0

execute if score pow Rand matches 10..12 if score fangTrap Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0

execute if score pow Rand matches 16..18 if score potionInvis Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0

execute if score pow Rand matches 19..22 if score elytra Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0

execute if score pow Rand matches 23..27 if score clock Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0

execute if score pow Rand matches 7..9 if score snowball Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0

execute if score pow Rand matches 0..3 if score eyeTeleport Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0

execute if score pow Rand matches 4..6 if score punchBow Toggle matches 1 run scoreboard players set PowerupTimer gameTimer 0


kill @e[tag=positioned,type=marker]
kill @e[tag=posRandom,type=marker]

execute if score pow Rand matches 13..15 if score kbStick Toggle matches 1 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"#FF71A2"}

execute if score pow Rand matches 10..12 if score clampTrap Toggle matches 1 run tellraw @a {"text":"A Powerup has spawned somewhere...","color":"gold"}

execute if score pow Rand matches 16..18 if score potionInvis Toggle matches 1 run tellraw @a "A Powerup has spawned somewhere"

execute if score pow Rand matches 19..22 if score elytra Toggle matches 1 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"light_purple"}

execute if score pow Rand matches 23..27 if score clock Toggle matches 1 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"yellow"}

execute if score pow Rand matches 7..9 if score snowball Toggle matches 1 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"aqua"}

execute if score pow Rand matches 0..3 if score eyeTeleport Toggle matches 1 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"green"}

execute if score pow Rand matches 4..6 if score punchBow Toggle matches 1 run tellraw @a {"text":"A Powerup has spawned somewhere","color":"gray"}

scoreboard players set anvil Rand 0

scoreboard players set pow Rand 0

tag @a remove posTemp