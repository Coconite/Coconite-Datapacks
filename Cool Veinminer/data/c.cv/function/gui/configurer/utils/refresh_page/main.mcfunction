function c.cv:gui/configurer/utils/clear_player_cursor/main
clear @a *[custom_data~{c:{cv:{config:1b}}}]

# Clear Data
data remove entity @s Items
data modify entity @s data set value {page:0,type:"main"}

# Put Items
data remove storage c:cv root.temp
data modify storage c:cv root.temp.fill_gui.item set value "c.cv:gui/background"
function c.cv:gui/configurer/utils/fill_gui/start

item replace entity @s container.11 with pink_candle[custom_data={c:{cv:{config:1b}}}]
item replace entity @s container.13 with lime_candle[custom_data={c:{cv:{config:1b}}}]
item replace entity @s container.15 with light_blue_candle[custom_data={c:{cv:{config:1b}}}]

loot replace entity @s container.15 loot c.cv:items/config_extra

function c.cv:gui/configurer/clock_second/state_machine/main
