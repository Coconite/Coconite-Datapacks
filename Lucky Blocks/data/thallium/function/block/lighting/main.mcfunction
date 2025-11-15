#Manages light level with custom blocks

data remove entity @s brightness
scoreboard players set #light_level thallium.dummy 0
scoreboard players set #has_skylight thallium.dummy 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function thallium:block/lighting/edit