$execute unless items entity @s container.$(value) * run return run function c.cv:gui/configurer/utils/pages_internal/items/remove_item/analize_id with storage c:cv root.temp.iterations

execute if score #iterations c.cv.dummy matches 26.. run return fail
scoreboard players add #iterations c.cv.dummy 1
execute store result storage c:cv root.temp.iterations.value int 1 run scoreboard players get #iterations c.cv.dummy
function c.cv:gui/configurer/utils/pages_internal/items/remove_item/iterate_slots with storage c:cv root.temp.iterations