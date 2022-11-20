kill @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b}}},sort=nearest,limit=1]
summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b,display:{Name:'[{"text":"Multishot Snowball of Destruction"}]',Lore:['[{"text":"This launches 5 Snowballs of Destruction in a plus shape"}]']},Enchantments:[{id:"minecraft:multishot",lvl:1}]}}}
summon firework_rocket ~ ~5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;6719955]}],Flight:2}}}}
kill @s