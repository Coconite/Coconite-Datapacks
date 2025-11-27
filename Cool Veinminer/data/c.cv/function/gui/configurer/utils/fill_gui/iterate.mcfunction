# Fill
execute store result storage c:cv root.temp.fill_gui.slot byte 1 run scoreboard players get #iterations c.cv.dummy
function c.cv:gui/configurer/utils/fill_gui/insert_item with storage c:cv root.temp.fill_gui

# Iteration System
execute if score #iterations c.cv.dummy matches 26.. run return fail
scoreboard players add #iterations c.cv.dummy 1
function c.cv:gui/configurer/utils/fill_gui/iterate
