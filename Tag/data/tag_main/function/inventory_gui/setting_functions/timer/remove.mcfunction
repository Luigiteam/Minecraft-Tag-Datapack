$scoreboard players remove Timer gameTimer $(ticks)

execute unless score Timer gameTimer matches 2400.. run scoreboard players set Timer gameTimer 2400

scoreboard players operation temp gameTimer = Timer gameTimer

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 0.5

scoreboard players set @s guiUpdate 1

tellraw @a [{"text": "The timer has decreased to "},{"score": {"name": "Timer","objective": "gameTimer"},"color": "light_purple"},{"text": " ticks"}]