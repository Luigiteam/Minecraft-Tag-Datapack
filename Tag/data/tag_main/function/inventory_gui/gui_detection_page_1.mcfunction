# Detection for hotbar items
execute as @s if entity @s[nbt=!{Inventory:[{Slot:1b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:2b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:3}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run function tag_main:start
execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run clear @a *
# Detection for World Border
execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:10}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:5}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b}]}] if score State gameStart matches 0 run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:10}

# Detection for clock
execute as @s if entity @s[nbt=!{Inventory:[{Slot:20b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/timer/add {ticks:1200}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:21b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/timer/add {ticks:600}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:22b}]}] if score State gameStart matches 0 run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:23b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/timer/remove {ticks:600}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:24b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/timer/remove {ticks:1200}

# Detection for Teams
execute as @s if entity @s[nbt=!{Inventory:[{Slot:28b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/teams/random

execute as @s if entity @s[nbt=!{Inventory:[{Slot:30b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/teams/runner

execute as @s if entity @s[nbt=!{Inventory:[{Slot:32b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/teams/tagger

execute as @s if entity @s[nbt=!{Inventory:[{Slot:34b}]}] if score State gameStart matches 0 run function tag_main:inventory_gui/setting_functions/teams/spec