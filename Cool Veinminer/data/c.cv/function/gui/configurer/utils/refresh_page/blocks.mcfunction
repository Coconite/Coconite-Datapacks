function c.cv:gui/configurer/utils/clear_player_cursor/main
clear @a *[custom_data~{c:{cv:{config:1b}}}]

playsound minecraft:ui.button.click master @a ~ ~ ~

# Clear Data
data remove entity @s Items
data modify entity @s data.type set value "blocks"

# Put Items
loot replace entity @s container.0 loot c.cv:items/technical/gui/buttons/left

loot replace entity @s container.8 loot c.cv:items/technical/gui/buttons/right/top
loot replace entity @s container.17 loot c.cv:items/technical/gui/buttons/right/middle
loot replace entity @s container.26 loot c.cv:items/technical/gui/buttons/right/bottom

function c.cv:gui/configurer/utils/pages_internal/blocks/load_items/main
