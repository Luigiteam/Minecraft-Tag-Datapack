scoreboard players operation total powMin = temp powMax

# kbStick phase
execute if score kbStick Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"kbStick"}
execute if score kbStick Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"kbStick"}

# fang trap phase
execute if score fangTrap Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"fangTrap"}
execute if score fangTrap Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"fangTrap"}

# potion invis phase
execute if score potionInvis Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"potionInvis"}
execute if score potionInvis Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"potionInvis"}

# elytra phase
execute if score elytra Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"elytra"}
execute if score elytra Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"elytra"}

# clock phase
execute if score clock Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"clock"}
execute if score clock Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"clock"}

# snowball phase
execute if score snowball Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"snowball"}
execute if score snowball Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"snowball"}

# eyeTeleport
execute if score eyeTeleport Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"eyeTeleport"}
execute if score eyeTeleport Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"eyeTeleport"}

# punchBow
execute if score punchBow Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"punchBow"}
execute if score punchBow Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"punchBow"}

# effectPowerup
execute if score effectPowerup Toggle matches 1.. run function tag_main:powerup_range_check/range_set {key:"effectPowerup"}
execute if score effectPowerup Toggle matches ..0 run function tag_main:powerup_range_check/pow_disable {key:"effectPowerup"}


scoreboard players operation total powMax = temp powMax
scoreboard players remove total powMax 1

execute store result storage main random.powMax int 1 run scoreboard players get total powMax

execute store result storage main random.kbStickMin int 1 run scoreboard players get kbStick powMin
execute store result storage main random.kbStickMax int 1 run scoreboard players get kbStick powMax

execute store result storage main random.fangTrapMin int 1 run scoreboard players get fangTrap powMin
execute store result storage main random.fangTrapMax int 1 run scoreboard players get fangTrap powMax

execute store result storage main random.potionInvisMin int 1 run scoreboard players get potionInvis powMin
execute store result storage main random.potionInvisMax int 1 run scoreboard players get potionInvis powMax

execute store result storage main random.elytraMin int 1 run scoreboard players get elytra powMin
execute store result storage main random.elytraMax int 1 run scoreboard players get elytra powMax

execute store result storage main random.clockMin int 1 run scoreboard players get clock powMin
execute store result storage main random.clockMax int 1 run scoreboard players get clock powMax

execute store result storage main random.snowballMin int 1 run scoreboard players get snowball powMin
execute store result storage main random.snowballMax int 1 run scoreboard players get snowball powMax

execute store result storage main random.eyeTeleportMin int 1 run scoreboard players get eyeTeleport powMin
execute store result storage main random.eyeTeleportMax int 1 run scoreboard players get eyeTeleport powMax

execute store result storage main random.punchBowMin int 1 run scoreboard players get punchBow powMin
execute store result storage main random.punchBowMax int 1 run scoreboard players get punchBow powMax

execute store result storage main random.effectPowerupMin int 1 run scoreboard players get effectPowerup powMin
execute store result storage main random.effectPowerupMax int 1 run scoreboard players get effectPowerup powMax