execute store result storage timer Minutes int 0.00083335 run scoreboard players get EndTimer gameTimer
execute store result score minutes gameTimer run data get storage timer Minutes 1

execute if score temp gameTimer matches 1200.. run scoreboard players remove temp gameTimer 1200
execute if score temp gameTimer matches 1..1199 run scoreboard players set sec Toggle 1
execute if score temp gameTimer matches 0 run scoreboard players set sec Toggle 0

execute if score sec Toggle matches 0 run item modify entity @s container.22 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The time is currently ",italic:false,"color":"white"},{score:{name:"minutes",objective:"gameTimer"},"color":"light_purple"},{text:" Minutes"}]],mode:"replace_all"}
execute if score sec Toggle matches 1 run item modify entity @s container.22 {function:"minecraft:set_lore",entity:"this",lore:[[{text:"The time is currently ",italic:false,"color":"white"},{score:{name:"minutes",objective:"gameTimer"},"color":"light_purple"},{text:":30",color:"light_purple"}]],mode:"replace_all"}
