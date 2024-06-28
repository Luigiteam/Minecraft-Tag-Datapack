$scoreboard players add Timer gameTimer $(ticks)

playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 50 1.0

execute if score Timer gameTimer matches 12000.. run scoreboard players set Timer gameTimer 12000

tellraw @a [{"text": "The timer has increased to "},{"score": {"name": "Timer","objective": "gameTimer"}},{"text": " ticks"}]