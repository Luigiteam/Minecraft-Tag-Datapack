execute as @a run scoreboard players operation @s reverseTimeTemp = @s reverseTime

scoreboard players set Highest reverseTimeTemp -2147483648

execute as @a run scoreboard players operation Highest reverseTimeTemp > @s reverseTimeTemp

execute as @a if score @s reverseTimeTemp = Highest reverseTimeTemp run tag @s add winner

function tag_main:winning/reverse_winners