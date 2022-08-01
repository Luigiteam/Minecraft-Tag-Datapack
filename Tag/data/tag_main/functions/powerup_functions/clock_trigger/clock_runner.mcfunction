# This function gets triggered by a runner who uses the clock powerup
scoreboard players remove Timer gameTimer 600

clear @a[tag=runner,scores={Sneak=1..}] clock{Floating:1b} 1

tellraw @a "The Timer has loss 30 seconds"