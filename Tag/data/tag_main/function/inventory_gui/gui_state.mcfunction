execute if items entity @s player.cursor * run scoreboard players set @s guiUpdate 1
execute as @a at @s run item replace entity @s player.cursor with minecraft:air 1
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:filled_map"}]}] run stopsound @s * ui.cartography_table.take_result
execute as @s if entity @s[nbt={Inventory:[{id:"minecraft:filled_map"}]}] run scoreboard players set @s guiUpdate 1

execute as @a[tag=kbStickSettings] unless score @s guiState matches 4 run tag @s remove kbStickSettings
execute as @a[tag=fangTrapSettings] unless score @s guiState matches 4 run tag @s remove fangTrapSettings
execute as @a[tag=potionInvisSettings] unless score @s guiState matches 4 run tag @s remove potionInvisSettings
execute as @a[tag=elytraSettings] unless score @s guiState matches 4 run tag @s remove elytraSettings
execute as @a[tag=clockSettings] unless score @s guiState matches 4 run tag @s remove clockSettings
execute as @a[tag=snowballSettings] unless score @s guiState matches 4 run tag @s remove snowballSettings
execute as @a[tag=eyeTeleportSettings] unless score @s guiState matches 4 run tag @s remove eyeTeleportSettings
execute as @a[tag=punchBowSettings] unless score @s guiState matches 4 run tag @s remove punchBowSettings
execute as @a[tag=effectPowerupSettings] unless score @s guiState matches 4 run tag @s remove effectPowerupSettings

execute as @a[tag=!kbStickSettings,tag=!fangTrapSettings,tag=!potionInvisSettings,tag=!elytraSettings,tag=!clockSettings,tag=!snowballSettings,tag=!eyeTeleportSettings,tag=!punchBowSettings,tag=!effectPowerupSettings] run tag @s remove sub_menu

execute as @s if entity @s[nbt=!{Inventory:[{Slot:0b}]},tag=!sub_menu] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt=!{Inventory:[{Slot:1b}]},tag=!sub_menu] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt=!{Inventory:[{Slot:2b}]},tag=!sub_menu] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt=!{Inventory:[{Slot:3b}]},tag=!sub_menu] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:4b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:5b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:6b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:7b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:9b}]}] if score @s guiState matches 1..2 run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:100b}]}] run scoreboard players set @s guiUpdate 1
execute as @s if entity @s[nbt={Inventory:[{Slot:102b}]}] run scoreboard players set @s guiUpdate 1


execute if entity @e[nbt={Item:{components:{"minecraft:custom_data":{Kill:1b}}}},type=item] run scoreboard players set @a guiUpdate 1

execute if score State gameStart matches -1 run clear @s *

execute as @s if score @s guiState matches 1 run function tag_main:inventory_gui/setting_functions/timer/clock_update

execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s at @s if score @s guiState matches 1 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_1
execute if score State gameStart matches 0 as @s at @s if score @s guiState matches 1 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_1

execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s at @s if score @s guiState matches 2 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_2
execute if score State gameStart matches 0 as @s at @s if score @s guiState matches 2 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_2

execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s at @s if score @s guiState matches 3 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_3
execute if score State gameStart matches 0 as @s at @s if score @s guiState matches 3 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_3

execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=!sub_menu] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/gui_detection_page_4
execute if score State gameStart matches 0 as @s[tag=!sub_menu] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/gui_page_4

# Kb Stick sub menu
execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=kbStickSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/kb_stick/detection
execute if score State gameStart matches 0 as @s[tag=kbStickSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/kb_stick/items with storage minecraft:main Weights

# Fang Trap sub menu

execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=fangTrapSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/fang_trap/detection
execute if score State gameStart matches 0 as @s[tag=fangTrapSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/fang_trap/item with storage minecraft:main Weights

# Potion Invis sub menu

execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=potionInvisSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/potion_invis/detection
execute if score State gameStart matches 0 as @s[tag=potionInvisSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/potion_invis/item with storage minecraft:main Weights

# Elytra sub menu
execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=elytraSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/elytra/detection
execute if score State gameStart matches 0 as @s[tag=elytraSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/elytra/item with storage minecraft:main Weights

# Clock sub menu
execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=clockSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/clock/detection
execute if score State gameStart matches 0 as @s[tag=clockSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/clock/item with storage minecraft:main Weights

# Snowball sub menu
execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=snowballSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/snowball/detection
execute if score State gameStart matches 0 as @s[tag=snowballSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/snowball/item with storage minecraft:main Weights

# Eye of Teleportation sub menu
execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=eyeTeleportSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/eye_teleport/detection
execute if score State gameStart matches 0 as @s[tag=eyeTeleportSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/eye_teleport/item with storage minecraft:main Weights

# Punching Bow sub menu
execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=punchBowSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/punching_bow/detection
execute if score State gameStart matches 0 as @s[tag=punchBowSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/punching_bow/item with storage minecraft:main Weights

# Effect Powerup sub menu
execute if score @s playerJoin matches 20.. if score State gameStart matches 0 as @s[tag=effectPowerupSettings] at @s if score @s guiState matches 4 unless score @s guiDelay matches 1.. run function tag_main:inventory_gui/mini_menus/effect_powerup/detection
execute if score State gameStart matches 0 as @s[tag=effectPowerupSettings] at @s if score @s guiState matches 4 if score @s guiUpdate matches 1 run function tag_main:inventory_gui/mini_menus/effect_powerup/item with storage minecraft:main Weights