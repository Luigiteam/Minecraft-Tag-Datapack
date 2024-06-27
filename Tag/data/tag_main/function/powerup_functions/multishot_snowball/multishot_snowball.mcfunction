summon snowball ^5 ^ ^ {Tags:["multi"],Item:{id:"minecraft:snowball",count:1b,components:{"minecraft:custom_data":{Floating:1b},"minecraft:enchantment_glint_override":1b}}}
summon snowball ^-5 ^ ^ {Tags:["multi"],Item:{id:"minecraft:snowball",count:1b,components:{"minecraft:custom_data":{Floating:1b},"minecraft:enchantment_glint_override":1b}}}
summon snowball ^-2.5 ^-5 ^ {Tags:["multi"],Item:{id:"minecraft:snowball",count:1b,components:{"minecraft:custom_data":{Floating:1b},"minecraft:enchantment_glint_override":1b}}}
summon snowball ^2.5 ^-5 ^ {Tags:["multi"],Item:{id:"minecraft:snowball",count:1b,components:{"minecraft:custom_data":{Floating:1b},"minecraft:enchantment_glint_override":1b}}}

execute as @e[tag=multi,type=minecraft:snowball] at @s run data modify entity @s Motion set from entity @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{Floating:1b,Upgrade:1b}}}},limit=1,sort=nearest] Motion
