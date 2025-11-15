execute if entity @s[gamemode=creative] run return fail

execute store result score #thallium.current_damage thallium.dummy run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score #thallium.max_damage thallium.dummy run data get entity @s SelectedItem.components."minecraft:max_damage"
execute unless data entity @s SelectedItem.components."minecraft:max_damage" run function thallium:item/technical/durability/mainhand/vanilla
execute if predicate thallium:entity_properties/unbreaking/mainhand run scoreboard players add #thallium.current_damage thallium.dummy 1
execute store result storage thallium:temp root.durability int 1 run scoreboard players get #thallium.current_damage thallium.dummy
function thallium:item/technical/durability/mainhand/modify with storage thallium:temp root

execute if score #thallium.current_damage thallium.dummy >= #thallium.max_damage thallium.dummy run function thallium:item/technical/durability/mainhand/break