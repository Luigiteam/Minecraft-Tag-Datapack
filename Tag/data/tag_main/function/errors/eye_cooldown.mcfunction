advancement revoke @s only tag_main:recalling_eye
execute unless score @s messageDelay matches 1.. run tellraw @s "Please wait until you're tp cooldown is over..."
execute unless score @s messageDelay matches 1.. run scoreboard players set @s messageDelay 20