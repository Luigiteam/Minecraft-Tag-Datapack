# Detection for World Border
execute as @s if entity @s[nbt=!{Inventory:[{Slot:11b}]}] run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:10}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:12b}]}] run function tag_main:inventory_gui/setting_functions/world_border/add {Amount:5}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:13b}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:14b}]}] run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:5}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:15b}]}] run function tag_main:inventory_gui/setting_functions/world_border/remove {Amount:10}

# Detection for clock
execute as @s if entity @s[nbt=!{Inventory:[{Slot:20b}]}] run function tag_main:inventory_gui/setting_functions/timer/add {ticks:1200}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:21b}]}] run function tag_main:inventory_gui/setting_functions/timer/add {ticks:600}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:22b}]}] run scoreboard players set @s guiUpdate 1

execute as @s if entity @s[nbt=!{Inventory:[{Slot:23b}]}] run function tag_main:inventory_gui/setting_functions/timer/remove {ticks:600}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:24b}]}] run function tag_main:inventory_gui/setting_functions/timer/remove {ticks:1200}

# Detection for Teams
execute as @s if entity @s[nbt=!{Inventory:[{Slot:28b}]}] run function tag_main:inventory_gui/setting_functions/teams/random

execute as @s if entity @s[nbt=!{Inventory:[{Slot:30b}]}] run function tag_main:inventory_gui/setting_functions/teams/runner

execute as @s if entity @s[nbt=!{Inventory:[{Slot:32b}]}] run function tag_main:inventory_gui/setting_functions/teams/tagger

execute as @s if entity @s[nbt=!{Inventory:[{Slot:34b}]}] run function tag_main:inventory_gui/setting_functions/teams/spec

# Detection for hotbar items
execute as @s if entity @s[nbt=!{Inventory:[{Slot:1b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:2}
execute as @s if entity @s[nbt=!{Inventory:[{Slot:2b}]}] run function tag_main:inventory_gui/setting_functions/pages/page_change {page:3}

execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run clear @a *
execute as @s if entity @s[nbt=!{Inventory:[{Slot:8b}]}] run function tag_main:start