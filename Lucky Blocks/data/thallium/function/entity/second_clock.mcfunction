execute if entity @s[type=minecraft:wandering_trader] run function thallium:entity/technical/wandering_trader/second_clock
execute as @s[tag=thallium.entity.artificial_despawn] if predicate thallium:random_chance/3 unless entity @a[distance=..64] run function thallium:entity/despawn
execute if entity @s[tag=thallium.entity.burns_in_sunlight] if predicate thallium:time_check/day if predicate thallium:location_check/can_see_sky unless predicate thallium:weather_check/raining run data modify entity @s Fire set value 160s

scoreboard players add @s thallium.entity.ambient_sound 1
execute if predicate thallium:random_chance/50 run scoreboard players add @s thallium.entity.ambient_sound 1

execute if score @s thallium.entity.ambient_sound matches 12.. run function thallium:entity/technical/sounds/ambient

function #thallium:entity/second_clock