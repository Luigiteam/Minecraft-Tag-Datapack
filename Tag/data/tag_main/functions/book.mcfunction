execute if score build Build matches 0 run function tag_main:build_extra

worldborder set 30000000

kill @e[type=marker,tag=tpSpawn]

# This gives the starting book
give @a written_book{pages:['["",{"text":"    The Game of Tag!  ","color":"gold"},{"text":" \\n-------------------\\n","color":"reset"},{"text":"    ","color":"aqua"},{"text":"[Start]","color":"green","clickEvent":{"action":"run_command","value":"/function tag_main:start"}},{"text":" ","color":"aqua"},{"text":"[Relocate]","color":"red","clickEvent":{"action":"run_command","value":"/function tag_main:reload"}},{"text":"\\n-------------------\\n","color":"reset"},{"text":"     Clock Settings:","color":"gold"},{"text":"\\n","color":"reset"},{"text":"  ","color":"reset"},{"text":"[3:00]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set EndTimer gameTimer 3600"}},{"text":" ","color":"blue"},{"text":"[6:00]","color":"#BF7734","clickEvent":{"action":"run_command","value":"/scoreboard players set EndTimer gameTimer 7200"}},{"text":" ","color":"#AFAF32"},{"text":"[12:00]","color":"dark_red","clickEvent":{"action":"run_command","value":"/scoreboard players set EndTimer gameTimer 14400"}},{"text":" ","color":"reset"},{"text":"\\n-------------------\\n   ","color":"reset"},{"text":"World Border Size:\\n  ","color":"gold"},{"text":"[60B]","color":"green","clickEvent":{"action":"run_command","value":"/function tag_main:book_functions/world_border_settings/60b_set"}},{"text":" ","color":"blue"},{"text":"[120B]","color":"#BF7734","clickEvent":{"action":"run_command","value":"/function tag_main:book_functions/world_border_settings/120b_set"}},{"text":" ","color":"gold"},{"text":"[200B]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function tag_main:book_functions/world_border_settings/200b_set"}},{"text":" ","color":"dark_red"},{"text":"\\n-------------------\\n","color":"reset"},{"text":"[Click this for other options]","color":"gold","clickEvent":{"action":"run_command","value":"/function tag_main:build"}}]'],title:"Tag Options",author:"Gamerfun1/Luigiteam1",generation:3}

# Other
scoreboard players set State gameStart 0

scoreboard players set @a teamChoose 0

scoreboard players set State gameStart 0

execute at @s run summon marker ~ ~3 ~ {Tags:["tpSpawn"]}

execute at @e[tag=tpSpawn,type=marker] run spawnpoint @a ~ ~ ~

scoreboard players set @s giveBook 0