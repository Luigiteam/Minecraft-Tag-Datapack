# Wood Sword Item
execute at @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:0.0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14188952]}],Flight:2}}}}

# Clamp Trap Item
execute at @e[type=item,nbt={Item:{id:"minecraft:polar_bear_spawn_egg",Count:1b,tag:{Floating:1b,Glowing:1b,EntityTag:{id:"minecraft:area_effect_cloud",Tags:[ClampTrap],Particle:"ambient_entity_effect 1 0 0 1",Age:0,WaitTime:0,Duration:6000,Radius:4.5f},display:{Name:'[{"text":"Clamp Trap","italic":false}]',Lore:['[{"text":"Right click on any block to set this trap up about 5","italic":false}]','[{"text":"block radius... But be careful, you may walk into your","italic":false}]','[{"text":"own trap...","italic":false}]']}}}}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11250603],FadeColors:[I;15790320]}],Flight:2}}}}

#
#

execute if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",Count:1b,tag:{Damage:59,RepairCost:10,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:0.0,Name:"generic.attack_damage",UUID:[I;-122523,4914,162414,-9828]}],display:{Name:'[{"text":"Knockback Stick","italic":false}]'},Enchantments:[{id:"minecraft:knockback",lvl:5s}]}}}] run schedule function tag_main:fireworks 10s

