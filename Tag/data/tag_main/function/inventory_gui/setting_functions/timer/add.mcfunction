$scoreboard players add EndTimer gameTimer $(ticks)

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 1.0

execute if score EndTimer gameTimer matches 12000.. run scoreboard players set EndTimer gameTimer 12000

scoreboard players operation temp gameTimer = EndTimer gameTimer

scoreboard players set @s guiUpdate 1

tellraw @a [{"text": "The timer has increased to "},{"score": {"name": "EndTimer","objective": "gameTimer"},"color": "light_purple"},{"text": " ticks"}]