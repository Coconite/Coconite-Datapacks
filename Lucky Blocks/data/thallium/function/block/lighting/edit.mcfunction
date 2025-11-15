#Manages setting brightness based on surrounding light level with custom blocks

execute positioned ~1 ~ ~ run function thallium:block/lighting/check
execute positioned ~ ~ ~1 run function thallium:block/lighting/check
execute positioned ~-1 ~ ~ run function thallium:block/lighting/check
execute positioned ~ ~ ~-1 run function thallium:block/lighting/check
execute positioned ~ ~1 ~ run function thallium:block/lighting/check
execute positioned ~ ~-1 ~ run function thallium:block/lighting/check

data merge entity @s {brightness:{sky:0,block:0}}

scoreboard players remove #light_level thallium.dummy 1
execute if score #has_skylight thallium.dummy matches 1 if score #light_level thallium.dummy matches ..3 run scoreboard players remove #light_level thallium.dummy 3
execute store result entity @s brightness.block int 1 run scoreboard players get #light_level thallium.dummy

execute if score #has_skylight thallium.dummy matches 1 run data modify entity @s brightness.sky set value 15