execute as @a at @s run function thallium:entity/player/tick

execute as @e[type=#thallium:should_tick,tag=thallium.tick] at @s run function thallium:entity/technical/loops/tick/start

execute store result score #gametime thallium.dummy run time query gametime

data remove storage thallium:temp macro