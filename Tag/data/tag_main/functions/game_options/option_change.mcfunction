execute at @e[tag=Random_1] run setblock ~ ~ ~ air
execute at @e[tag=Random_1] run setblock ~ ~1 ~ air

# From timer to world border settings
execute if score Options optionsSelect matches 1 at @e[tag=Random_1] run setblock ~ ~ ~ structure_block{mode:"LOAD",posX:3,posY:-7,posZ:-5,name:"tag_main:border_settings"}
execute if score Options optionsSelect matches 1 at @e[tag=Random_1] run setblock ~ ~1 ~ redstone_block

#From world border to timer settings
execute if score Options optionsSelect matches 2.. at @e[tag=Random_1] run setblock ~ ~ ~ structure_block{mode:"LOAD",posX:3,posY:-7,posZ:-5,name:"tag_main:timer_settings"}
execute if score Options optionsSelect matches 2.. at @e[tag=Random_1] run setblock ~ ~1 ~ redstone_block
