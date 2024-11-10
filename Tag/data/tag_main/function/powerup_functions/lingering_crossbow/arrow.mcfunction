summon area_effect_cloud ~ ~ ~ {Particle:{type:"entity_effect",color:[0.0f,0.4f,0.2f,1.0f]},ReapplicationDelay:100,Radius:3f,Duration:600,Age:0,WaitTime:0,potion_contents:{custom_color:2790438,custom_effects:[{id:"minecraft:slowness",amplifier:0,duration:200},{id:"minecraft:poison",amplifier:4,duration:200},{id:"minecraft:hunger",amplifier:255,duration:400}]},Tags:["poison_cloud"]}

effect clear @s unluck

scoreboard players set @s arrowEffect 2