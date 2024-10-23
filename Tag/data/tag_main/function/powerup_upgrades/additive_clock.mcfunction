execute store result score clock_storage Numbers run data get entity @e[limit=1,type=item,nbt={Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{Floating:1b}}}},sort=nearest] Item.components."minecraft:custom_data".Upgrade
scoreboard players add clock_storage Numbers 1
execute store result storage clock_storage Upgrade byte 1 run scoreboard players get clock_storage Numbers

data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{Floating:1b}}}}] {Item:{id:"minecraft:clock",components:{"minecraft:custom_name":'{"text":"Additive Clock of Destiny","color":"yellow","italic":false}',"minecraft:custom_data":{Floating:1b,Upgrade:1b},"minecraft:lore":['[{"text":"This clock can increase/decrease time depending"}]','[{"text":"on how many Upgrade Modules were put on the clock"}]','[{"text":"just right click to use"}]'],"minecraft:enchantment_glint_override":1b,"minecraft:food":{nutrition:1,saturation:0.0,can_always_eat:true},"minecraft:consumable":{animation:"bow",consume_seconds:3,has_consume_particles:false,sound:"block.note_block.pling",on_consume_effects:[{type:"apply_effects",effects:[{id:"minecraft:luck",amplifier:2,duration:100,show_particles:false,show_icon:false}]},{type:"play_sound",sound:"block.conduit.activate"}]},"minecraft:use_cooldown":{seconds:5}}}}

data modify entity @e[limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:clock",components:{"minecraft:custom_data":{Floating:1b}}}}] Item.components."minecraft:custom_data".Upgrade set from storage clock_storage Upgrade

summon firework_rocket ~ ~5 ~ {LifeTime:20,FireworksItem:{id:firework_rocket, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16711485]}], flight_duration:1b}}}}

kill @s