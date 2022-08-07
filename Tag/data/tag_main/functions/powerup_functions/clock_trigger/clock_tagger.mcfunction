# This function gets triggered by a tagger who uses the clock powerup
scoreboard players add Timer gameTimer 600

clear @a[tag=tagger,scores={Sneak=1..}] clock{Floating:1b} 1

tellraw @a "The Timer got added by 30 seconds"