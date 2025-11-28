scoreboard players set @s c.warning.toggle 0

execute if score @s c.warning.activated matches 1 run return run function c.warning:entity/player/warning/disabled

title @s title {"text":"DANGER ALERT IS ENABLED","font":"c.warning:tooltip_green","shadow_color":0}
playsound minecraft:entity.player.levelup player @s ~ ~ ~
scoreboard players set @s c.warning.activated 1
