$scoreboard players remove EndTimer gameTimer $(ticks)

execute unless score EndTimer gameTimer matches 2400.. run scoreboard players set EndTimer gameTimer 2400

scoreboard players operation temp gameTimer = EndTimer gameTimer

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 0.5

scoreboard players set @s guiUpdate 1

tellraw @a [{"text": "The timer has decreased to "},{"score": {"name": "EndTimer","objective": "gameTimer"},"color": "light_purple"},{"text": " ticks"}]