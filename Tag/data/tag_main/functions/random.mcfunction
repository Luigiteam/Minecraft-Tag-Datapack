tag @e[tag=powRandom,sort=random,limit=1,type=marker] add choosen

execute if entity @e[tag=Random_1,tag=choosen,type=marker] run scoreboard players add num Rand 1
execute if entity @e[tag=Random_2,tag=choosen,type=marker] run scoreboard players add num Rand 2
execute if entity @e[tag=Random_3,tag=choosen,type=marker] run scoreboard players add num Rand 3
execute if entity @e[tag=Random_4,tag=choosen,type=marker] run scoreboard players add num Rand 4
execute if entity @e[tag=Random_5,tag=choosen,type=marker] run scoreboard players add num Rand 5
execute if entity @e[tag=Random_6,tag=choosen,type=marker] run scoreboard players add num Rand 6
execute if entity @e[tag=Random_7,tag=choosen,type=marker] run scoreboard players add num Rand 7
execute if entity @e[tag=Random_8,tag=choosen,type=marker] run scoreboard players add num Rand 8
execute if entity @e[tag=Random_9,tag=choosen,type=marker] run scoreboard players add num Rand 9
execute if entity @e[tag=Random_0,tag=choosen,type=marker] run scoreboard players add num Rand 0

tag @e[tag=choosen,type=marker] remove choosen