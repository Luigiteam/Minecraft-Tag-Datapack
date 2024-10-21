advancement revoke @s only tag_main:recalling_eye
execute unless score @s messageDelay matches 1.. run tellraw @s "A recall is still in effect, please wait until that one is done."
execute unless score @s messageDelay matches 1.. run scoreboard players set @s messageDelay 20