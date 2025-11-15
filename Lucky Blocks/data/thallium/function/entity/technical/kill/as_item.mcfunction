data remove storage thallium:temp root
data modify storage thallium:temp root.death set from entity @s Item.components."minecraft:custom_data".thallium.death

function thallium:entity/technical/kill/macro with storage thallium:temp root.death

execute if data entity @s Item.components."minecraft:custom_data".thallium.death.xp summon minecraft:experience_orb run data modify entity @s Value set from storage thallium:temp root.death.xp

kill @s