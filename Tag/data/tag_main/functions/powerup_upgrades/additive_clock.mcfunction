execute store result score clock_storage Numbers run data get entity @e[limit=1,type=item,nbt={Item:{id:"minecraft:clock",tag:{Floating:1b}}},sort=nearest] Item.tag.Upgrade
scoreboard players add clock_storage Numbers 1
execute store result storage clock_storage Upgrade byte 1 run scoreboard players get clock_storage Numbers

kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:clock",tag:{Floating:1b}}}]

summon item ~ ~ ~ {Item:{id:"minecraft:clock",Count:1b,tag:{Floating:1b,Upgrade:0b,display:{Name:'{"text":"Additive Clock of Destiny"}',Lore:['[{"text":"This clock can increase/decrease time depending"}]','[{"text":"on how many Upgrade Modules were put on the clock"}]']},Enchantments:[{}]}}}
data modify entity @e[limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:clock",tag:{Floating:1b,Upgrade:0b}}}] Item.tag.Upgrade set from storage clock_storage Upgrade

summon firework_rocket ~ ~5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;14602026]}],Flight:2}}}}

kill @s