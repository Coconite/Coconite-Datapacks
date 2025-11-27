function c.cv:gui/configurer/utils/clear_player_cursor/main
clear @a *[custom_data~{c:{cv:{config:1b}}}]

playsound minecraft:ui.button.click master @a ~ ~ ~

# Clear Data
data remove entity @s Items
data modify entity @s data set value {page:0,type:"extra_config"}

# Put Items

loot replace entity @s container.0 loot c.cv:items/technical/gui/buttons/left

## Options
function c.cv:gui/configurer/utils/pages_internal/extra_config/load_buttons/shift

function c.cv:gui/configurer/utils/pages_internal/extra_config/load_buttons/size

function c.cv:gui/configurer/utils/pages_internal/extra_config/load_buttons/op
