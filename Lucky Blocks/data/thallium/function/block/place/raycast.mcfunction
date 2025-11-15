execute align xyz positioned ~0.5 ~0.5 ~0.5 run function thallium:block/place/scan
scoreboard players remove @s thallium.dummy 1
execute if score @s thallium.dummy matches 1.. positioned ^ ^ ^1 run function thallium:block/place/raycast