summon area_effect_cloud ~ ~ ~ {Particle:{type:"entity_effect",color:[0.0,0.0,0.0,0.0]},ReapplicationDelay:200,Radius:3f,Duration:600,Age:0,WaitTime:0,potion_contents:{custom_color:-12793796,custom_effects:[{id:"minecraft:slowness",amplifier:0,duration:200},{id:"minecraft:poison",amplifier:2,duration:100}]},Tags:["poison_cloud"]}

effect clear @s unluck

scoreboard players set @s arrowEffect 2

give @s minecraft:netherite_sword[minecraft:tool={default_mining_speed:2.0,rules:[]}]