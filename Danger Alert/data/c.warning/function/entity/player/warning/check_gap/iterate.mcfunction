execute if block ~ ~-1 ~ #c.warning:dangerous run return run function c.warning:entity/player/warning/check_gap/imminent_danger

execute store result score $health c.warning.dummy run data get entity @s Health
execute if score #iteration c.warning.dummy matches 3.. run scoreboard players operation $health c.warning.dummy -= #iteration c.warning.dummy

execute if block ~ ~-1 ~ minecraft:water run return fail
execute if block ~ ~-1 ~ minecraft:cobweb run return fail
execute if block ~ ~-1 ~ minecraft:slime_block run return fail

execute unless block ~ ~-1 ~ #thallium:not_solid if score $health c.warning.dummy matches ..16 run return run function c.warning:entity/player/warning/check_gap/imminent_danger
execute unless block ~ ~-1 ~ #thallium:not_solid run return fail

execute if score #iteration c.warning.dummy >= #max_iterations c.warning.dummy run return run function c.warning:entity/player/warning/check_gap/imminent_danger
scoreboard players add #iteration c.warning.dummy 1

execute positioned ~ ~-1 ~ run function c.warning:entity/player/warning/check_gap/iterate