advancement revoke @s only thallium:technical/shot_crossbow/shoot
scoreboard players reset @s thallium.bow

data remove storage thallium:temp root

execute as @e[type=#minecraft:arrows,distance=..10,nbt={life:0s}] run function #thallium:entity/arrow