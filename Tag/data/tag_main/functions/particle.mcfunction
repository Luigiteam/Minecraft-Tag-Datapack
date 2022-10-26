execute if score @s markerTimer matches 1 run particle electric_spark ^ ^1.5 ^0 0 0 0 0 1 force @a[tag=tagger]
execute if score @s markerTimer matches 1 run playsound block.note_block.bit ambient @a[tag=tagger] ^ ^1.5 ^0 1 0

execute if score @s markerTimer matches 3 run particle electric_spark ^ ^1.5 ^1 0 0 0 0 1 force @a[tag=tagger]
execute if score @s markerTimer matches 3 run playsound block.note_block.bit ambient @a[tag=tagger] ^ ^1.5 ^1 1 0.4

execute if score @s markerTimer matches 5 run particle electric_spark ^ ^1.5 ^2 0 0 0 0 1 force @a[tag=tagger]
execute if score @s markerTimer matches 5 run playsound block.note_block.bit ambient @a[tag=tagger] ^ ^1.5 ^2 1 0.8

execute if score @s markerTimer matches 7 run particle electric_spark ^ ^1.5 ^3 0 0 0 0 1 force @a[tag=tagger]
execute if score @s markerTimer matches 7 run playsound block.note_block.bit ambient @a[tag=tagger] ^ ^1.5 ^3 1 1.2

execute if score @s markerTimer matches 9 run particle electric_spark ^ ^1.5 ^4 0 0 0 0 1 force @a[tag=tagger]
execute if score @s markerTimer matches 9 run playsound block.note_block.bit ambient @a[tag=tagger] ^ ^1.5 ^4 1 1.6

execute if score @s markerTimer matches 10 run particle electric_spark ^ ^1.5 ^5 0 0 0 0 1 force @a[tag=tagger]