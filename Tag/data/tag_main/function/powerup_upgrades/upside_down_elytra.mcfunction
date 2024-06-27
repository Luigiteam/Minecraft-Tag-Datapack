kill @e[limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:elytra",components:{"minecraft:custom_data":{Floating:1b,Upgrade:0b}}}}]

summon item ~ ~ ~ {Item:{id:"minecraft:elytra",components:{"minecraft:custom_name":'[{"text":"Upside-Down Elytra","italic":false,"color":"dark_purple"}]',"minecraft:custom_data":{Floating:1b,Upgrade:1b},"minecraft:lore":['[{"text":"When put on, this will take you down 30 blocks,"}]','[{"text":"destroying anyblock in your way!"}]']}}}

summon firework_rocket ~ ~5 ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;12801229,15790320], fade_colors:[I;8073150]}], flight_duration:1b}}}}
kill @s