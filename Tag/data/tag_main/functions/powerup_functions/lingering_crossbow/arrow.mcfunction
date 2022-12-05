summon area_effect_cloud ~ ~ ~ {WaitTime:0,Age:0,Duration:100,Tags:["arrowCloud"],Radius:5.0f,Effects:[{Id:2,Duration:100,Amplifier:2},{Id:7,Duration:0,Amplifier:0}],Color:9363492,ReapplicationDelay:15,RadiusOnUse:-0.1f}

scoreboard players set @s arrowEffect 1

execute if entity @s[type=arrow] run summon arrow ~ ~ ~ {pickup:1b,Tags:["tpArrow"],OnGround:1b}
tp @e[type=arrow,tag=tpArrow] ~ ~ ~ ~ ~
execute if entity @s[type=arrow] run kill @s
