execute store result storage c:cv root.temp.item_handler.slot int 1 run scoreboard players get #iterations c.cv.dummy
function c.cv:gui/configurer/utils/pages_internal/items/scan_slot with storage c:cv root.temp.item_handler

execute if score #iterations c.cv.dummy matches 26.. run return fail
scoreboard players add #iterations c.cv.dummy 1
function c.cv:gui/configurer/utils/pages_internal/items/scan_array
