# Detection for hotbar items
execute as @s if entity @s[nbt=!{Inventory:[{Slot:1b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:2}

# Detection for World Border
execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b,id:"minecraft:lime_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:10}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b,id:"minecraft:lime_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b,id:"minecraft:red_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b,id:"minecraft:red_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:10}

# Detection for clock
execute as @s if entity @s[nbt=!{Inventory:[{Slot:20b,id:"minecraft:lime_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/timer/add {ticks:1200}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:21b,id:"minecraft:lime_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/timer/add {ticks:600}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:23b,id:"minecraft:red_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/timer/remove {ticks:600}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:24b,id:"minecraft:red_stained_glass_pane"}]}] run function tag_main:inventory_gui/setting_functions/timer/remove {ticks:1200}

# Detection for Teams
execute as @s if entity @s[nbt=!{Inventory:[{Slot:29b,id:"minecraft:leather_boots"}]}] run function tag_main:inventory_gui/setting_functions/teams/runner

execute as @s if entity @s[nbt=!{Inventory:[{Slot:31b,id:"minecraft:iron_sword"}]}] run function tag_main:inventory_gui/setting_functions/teams/tagger

execute as @s if entity @s[nbt=!{Inventory:[{Slot:33b,id:"minecraft:ender_eye"}]}] run function tag_main:inventory_gui/setting_functions/teams/spec