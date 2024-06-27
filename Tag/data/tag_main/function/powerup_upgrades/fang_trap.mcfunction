kill @e[nbt={Item:{id:"minecraft:polar_bear_spawn_egg",components:{"minecraft:custom_data":{Floating:1b}}}},sort=nearest,limit=1]

summon item ~ ~ ~ {Item:{id:"minecraft:polar_bear_spawn_egg",count:1b,components:{"minecraft:custom_data":{Floating:1b,Upgrade:1b},"minecraft:custom_name":'{"text":"Super Fang Trap","color":"gold","italic":false}',"minecraft:entity_data":{id:"area_effect_cloud",Tags:[UpgradeFang],Particle:{type:"entity_effect",color:[1f,.7f,0f,1f]},Age:0,WaitTime:0,Duration:6000,Radius:4.5f}, "minecraft:lore":['[{"text":"This is a trap that","italic":false}]','[{"text":"readies in 3 seconds,","italic":false}]','[{"text":"invisible particles,","italic":false}]','[{"text":"and more lasting effects!","italic":false}]']}}}

summon minecraft:firework_rocket ~ ~5 ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;15435844], fade_colors:[I;11250603]}], flight_duration:1b}}}}

kill @s