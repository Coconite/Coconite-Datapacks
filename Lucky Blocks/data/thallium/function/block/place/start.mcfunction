advancement revoke @s only thallium:technical/placed_block/custom

scoreboard players set @s thallium.dummy 0
execute store result score @s thallium.dummy run attribute @s minecraft:block_interaction_range get 1
scoreboard players add @s thallium.dummy 2
execute anchored eyes run function thallium:block/place/raycast