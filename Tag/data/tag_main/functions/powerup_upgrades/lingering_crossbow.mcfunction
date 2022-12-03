summon item ~ ~ ~ {Item:{id:"minecraft:crossbow",Count:1b,tag:{Floating:1b,Enchantments:[{}],display:{Name:'[{"text":"Lingering Crossbow"}]',Lore:['[{"text":"Use this to shoot arrows that when it lands,"}]','[{"text":"causes any player to be slow and poisoned"}]']},Damage:460}}}
summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:5}}

kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bow",tag:{Floating:1b}}}]

summon firework_rocket ~ ~5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;10853544]}],Flight:2}}}}

kill @s