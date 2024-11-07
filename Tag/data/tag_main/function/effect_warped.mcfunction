execute if score gameMode Toggle matches 5 run effect give @p[tag=runner] glowing 10 0 true

summon marker ~ ~ ~ {Tags:[particle]}

scoreboard players set @e[tag=!processed,tag=particle,type=marker] gameTimer 200
scoreboard players set @e[tag=!processed,tag=particle,type=marker] markerTimer 0
tag @e[type=marker,tag=particle,tag=!processed] add processed

execute as @e[tag=particle,type=marker] at @s run tp @s ~ ~ ~ facing entity @e[tag=runner,tag=!spectate,tag=!hidden,limit=1,sort=nearest]

scoreboard players set @s effectLostWarped 1
# give @s glow_berries[minecraft:custom_data={Floating:1b,Effect:1b},minecraft:enchantment_glint_override=1b,minecraft:custom_name='[{"text":"Runner Tracker","italic":false}]',minecraft:item_model="main:tag_player_revealer",minecraft:potion_contents={custom_effects:[{id:"minecraft:luck",amplifier:6b,duration:100}]},minecraft:food={nutrition:3,saturation:0f,can_always_eat:true},consumable={consume_seconds:0.5f,animation:"bow",has_consume_particles:false,sound:{sound_id:"intentionally_empty"},on_consume_effects:[{type:"play_sound",sound:"block.beacon.activate"}]},minecraft:use_cooldown={seconds:15,cooldown_group:"tag:effect"}] 1
effect clear @s minecraft:luck

playsound block.conduit.activate block @s ~ ~ ~ 50 2.0