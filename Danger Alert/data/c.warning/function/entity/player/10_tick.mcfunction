scoreboard players enable @s c.warning.toggle
execute unless score @s c.warning.toggle matches 0 run function c.warning:entity/player/warning/toggle

execute if entity @s[gamemode=!survival,gamemode=!adventure] run return fail
execute if score @s c.warning.activated matches 0 run return fail
execute align xyz positioned ~.5 ~.5 ~.5 run function c.warning:entity/player/warning/10_tick
