$scoreboard players operation $(key) powMin = temp powMax

$scoreboard players operation temp powMax += $(key) powWeight

$scoreboard players operation $(key) powMax = temp powMax

scoreboard players add temp powMax 1