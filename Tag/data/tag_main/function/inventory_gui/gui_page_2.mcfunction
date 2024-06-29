clear @s *
# Items for gamemode change
item replace entity @s container.10 with paper[minecraft:custom_name='[{"text": "Game Modes"}]',minecraft:lore=['[{"text": "Hover over the modes to learn more about them!"}]','[{"text": "Click on one to select it."}]']]

execute if score gameMode Toggle matches 1 run item replace entity @s container.11 with cobblestone[minecraft:custom_name='[{"text": "Normal Tag"}]',minecraft:lore=['[{"text": "Standard Tag where taggers tag runners, "}]','[{"text": "whoever is the runner by the end of the timer wins the round!"}]'],minecraft:enchantment_glint_override=1b,minecraft:custom_model_data=1,minecraft:custom_data={Kill:1b}]
execute unless score gameMode Toggle matches 1 run item replace entity @s container.11 with cobblestone[minecraft:custom_name='[{"text": "Normal Tag"}]',minecraft:lore=['[{"text": "Standard Tag where taggers tag runners, "}]','[{"text": "whoever is the runner by the end of the timer wins the round!"}]'],minecraft:custom_model_data=1,minecraft:custom_data={Kill:1b}]

execute if score gameMode Toggle matches 2 run item replace entity @s container.12 with snowball[minecraft:custom_name='[{"text": "Freeze Tag","color": "aqua"}]',minecraft:lore=['[{"text": "When a tagger tags a runner, they freeze for a time."}]','[{"text": "Tag all runners before time to win!"}]'],minecraft:enchantment_glint_override=1b,minecraft:custom_model_data=2,minecraft:custom_data={Kill:1b}]
execute unless score gameMode Toggle matches 2 run item replace entity @s container.12 with snowball[minecraft:custom_name='[{"text": "Freeze Tag","color": "aqua"}]',minecraft:lore=['[{"text": "When a tagger tags a runner, they freeze for a time."}]','[{"text": "Tag all runners before time to win!"}]'],minecraft:custom_model_data=2,minecraft:custom_data={Kill:1b}]

execute if score gameMode Toggle matches 3 run item replace entity @s container.13 with end_stone[minecraft:custom_name='[{"text": "Reverse Tag","color": "green"}]',minecraft:lore=['[{"text": "Tag where runners tag taggers,"}]','[{"text": "whoever is a tagger the longest wins!"}]'],minecraft:enchantment_glint_override=1b,minecraft:custom_model_data=3,minecraft:custom_data={Kill:1b}]
execute unless score gameMode Toggle matches 3 run item replace entity @s container.13 with end_stone[minecraft:custom_name='[{"text": "Reverse Tag","color": "green"}]',minecraft:lore=['[{"text": "Tag where runners tag taggers,"}]','[{"text": "whoever is a tagger the longest wins!"}]'],minecraft:custom_model_data=3,minecraft:custom_data={Kill:1b}]

execute if score gameMode Toggle matches 4 run item replace entity @s container.14 with zombie_spawn_egg[minecraft:custom_name='[{"text": "Infection Tag","color": "red"}]',minecraft:lore=['[{"text": "Any runner who is tagged stays tagged for the rest of the round."}]','[{"text": "Infect everyone or survive!"}]'],minecraft:enchantment_glint_override=1b,minecraft:custom_model_data=4,minecraft:custom_data={Kill:1b}]
execute unless score gameMode Toggle matches 4 run item replace entity @s container.14 with zombie_spawn_egg[minecraft:custom_name='[{"text": "Infection Tag","color": "red"}]',minecraft:lore=['[{"text": "Any runner who is tagged stays tagged for the rest of the round."}]','[{"text": "Infect everyone or survive!"}]'],minecraft:custom_model_data=4,minecraft:custom_data={Kill:1b}]

execute if score gameMode Toggle matches 5 run item replace entity @s container.15 with deepslate[minecraft:custom_name='[{"text": "Hide and Seek","color": "gray"}]',minecraft:lore=['[{"text": "No glow effects for the runner."}]','[{"text": "Everytime a tagger is near a runner, a heart beat apears."}]','[{"text": "Stay hidden or get tagged."}]'],minecraft:enchantment_glint_override=1b,minecraft:custom_model_data=5,minecraft:custom_data={Kill:1b}]
execute unless score gameMode Toggle matches 5 run item replace entity @s container.15 with deepslate[minecraft:custom_name='[{"text": "Hide and Seek","color": "gray"}]',minecraft:lore=['[{"text": "No glow effects for the runner."}]','[{"text": "Everytime a tagger is near a runner, a heart beat apears."}]','[{"text": "Stay hidden or get tagged."}]'],minecraft:custom_model_data=5,minecraft:custom_data={Kill:1b}]

# Items for powerups


# Item for page change
item replace entity @s container.27 with minecraft:paper[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me for page 1"}]'] 1
item replace entity @s container.35 with minecraft:paper[minecraft:custom_data={Kill:1b},minecraft:custom_name='[{"text": "Click me for page 1"}]'] 1