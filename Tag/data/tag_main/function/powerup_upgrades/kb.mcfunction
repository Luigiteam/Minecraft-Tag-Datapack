tellraw @a "helo"

kill @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:custom_data":{Floating:1b}}}},sort=nearest,limit=1]
summon item ~ ~ ~ {Item:{id:"wooden_sword",components:{"minecraft:custom_data":{Floating:1b,Upgrade:1b},"minecraft:damage":56,"minecraft:custom_name":'[{"text":"Super Knockback Stick","italic":false}]',"minecraft:lore":['[{"text":"This is a more powerful","italic":false}]','[{"text":"version of the original","italic":false}]','[{"text":"Knockback Stick with more","italic":false}]','[{"text":"durability!","italic":false}]'],"minecraft:enchantments":{knockback:10s}}}}
summon minecraft:firework_rocket ~ ~4 ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;11743532], fade_colors:[I;14188952]}], flight_duration:1b}}}}
kill @s