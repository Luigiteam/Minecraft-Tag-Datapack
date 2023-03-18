# kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:ender_eye",tag:{Floating:1b,Upgrade:1b}}}]

#summon item ~ ~ ~ {Item:{id:"minecraft:ender_eye",Count:1b,tag:{Floating:1b,Upgrade:1b,display:{Name:'[{"text":"Eye of Recalling"}]',Lore:['[{"text":"This will teleport you to a random person,"}]','[{"text":"but then recalls you back after 5 seconds."}]']},Enchantments:[{}]}}}

data merge entity @e[limit=1,type=item,sort=nearest,nbt={Item:{id:"minecraft:ender_eye",tag:{Floating:1b,Upgrade:0b}}}] {Item:{tag:{Upgrade:1b,display:{Name:'[{"text":"Eye of Recalling"}]',Lore:['[{"text":"This will teleport you to a random person,"}]','[{"text":"but then recalls you back after 5 seconds."}]']}}}}

summon firework_rocket ~ ~5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4312372]}],Flight:2}}}}

kill @s