summon item ~ ~ ~ {Item:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_name":'[{"text":"Lingering Crossbow"}]',"minecraft:lore":['[{"text":"Any arrow that lands on a player summons a cloud of poison."}]','[{"text":"anyone in that cloud gets slowed and poisioned"}]'],"minecraft:enchantment":{multishot:1s},"minecraft:custom_data":{Floating:1b,Upgrade:1b}, "minecraft:damage":460,"minecraft:enchantments":{multishot:1s}}}}
summon item ~ ~ ~ {Item:{id:"minecraft:arrow",count:5}}

kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bow",components:{"minecraft:custom_data":{Floating:1b}}}}]

summon firework_rocket ~ ~5 ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;13882323]}], flight_duration:1b}}}}

kill @s