summon snowball ^ ^5 ^ {Tags:["top"],Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b}}}
summon snowball ^5 ^ ^ {Tags:["left"],Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b}}}
summon snowball ^-5 ^ ^ {Tags:["right"],Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b}}}
summon snowball ^ ^-5 ^ {Tags:["bottom"],Item:{id:"minecraft:snowball",Count:1b,tag:{Floating:1b}}}

data modify entity @e[limit=1,sort=nearest,type=snowball,tag=top] Motion set from entity @s Motion
data modify entity @e[limit=1,sort=nearest,type=snowball,tag=left] Motion set from entity @s Motion
data modify entity @e[limit=1,sort=nearest,type=snowball,tag=right] Motion set from entity @s Motion
data modify entity @e[limit=1,sort=nearest,type=snowball,tag=bottom] Motion set from entity @s Motion
