kill @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b}}},sort=nearest,limit=1]
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b,display:{Name:'[{"text":"Multishot Snowball of Destruction"}]',Lore:['[{"text":"This launches 5 Snowballs of Destruction in a plus shape"}]']},Enchantments:[{id:"minecraft:multishot",lvl:1}]}}}
summon firework_rocket ~ ~5 ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711485]}], flight_duration:1b}}}}
kill @s