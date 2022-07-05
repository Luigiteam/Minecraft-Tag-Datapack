scoreboard players set State gameStart 0

execute at @r run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["builder"],Invulnerable:1b}

execute at @e[tag=builder] run setblock ~ 309 ~ structure_block{name:"tag_main:start",mode:"LOAD",posY:0}
execute at @e[tag=builder] run setblock ~ 310 ~ redstone_block

kill @e[tag=builder]

scoreboard players set Build startBuild 1

# This sets the world border
execute at @e[tag=spawn] run worldborder center ~ ~
worldborder set 125 1