kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_data":{Floating:1b}}}},sort=nearest,limit=1]

summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_data":{Floating:1b,Upgrade:1b},"minecraft:custom_name":'[{"text":"Decoy Potion","italic":false,"color":"gray"}]',"minecraft:lore":['[{"text":"Any Runner that gets splashed","italic":false}]','[{"text":"with this potion leaves behind a","italic":false}]','[{"text":"decoy that the player revealer","italic":false}]','[{"text":"can track while youself is","italic":false}]','[{"text":"invisiable and fast.","italic":false}]'],"minecraft:potion_contents":{custom_color:15117741,custom_effects:[{id:"invisibility",duration:310,ambient:1b,show_particles:0b},{id:"luck",duration:400,show_particles:0b,ambient:1b}]},"minecraft:enchantment_glint_override":1b}}}

summon minecraft:firework_rocket ~ ~5 ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;5394769], fade_colors:[I;15790320]}], flight_duration:2b}}}}

kill @s