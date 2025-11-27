advancement revoke @s only c.cv:technical/tick/configurer

tag @s add c.cv.entity.player.open_ui

team join c.cv.no_collision @s
execute unless entity @e[tag=c.cv.gui.configurer,type=minecraft:chest_minecart,distance=..20] run return run function c.cv:item/configurer/gui/spawn
execute positioned ~ ~1 ~ run function c.cv:item/configurer/gui/tp
team leave @s
