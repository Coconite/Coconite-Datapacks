advancement revoke @s only c.cv:technical/tick/has_open_gui
title @s actionbar {"translate":"Configuration Closed"}
tag @s remove c.cv.entity.player.open_ui
execute as @n[tag=c.cv.gui.configurer,type=minecraft:chest_minecart] run function c.cv:item/configurer/gui/kill
