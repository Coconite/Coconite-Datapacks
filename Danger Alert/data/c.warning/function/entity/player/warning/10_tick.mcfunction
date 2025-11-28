execute if entity @s[tag=c.warning.warned] if block ~ ~-1 ~ #thallium:opaque if block ~ ~-2 ~ #thallium:opaque run return run tag @s remove c.warning.warned
execute if entity @s[tag=!c.warning.warned] if block ~ ~-1 ~ #thallium:opaque positioned ~ ~-2 ~ run function c.warning:entity/player/warning/check_gap/start
