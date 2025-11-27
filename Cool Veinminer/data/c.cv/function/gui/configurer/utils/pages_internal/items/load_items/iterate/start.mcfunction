execute store result score #iterations c.cv.dummy run data get entity @s data.page
scoreboard players operation #iterations c.cv.dummy *= #23 c.cv.dummy
scoreboard players set #real_iterations c.cv.dummy 0

execute store result score #max_iterations c.cv.dummy run data get storage c:cv root.config.items
execute store result storage c:cv root.temp.max_iterations int 1 run scoreboard players get #max_iterations c.cv.dummy

function c.cv:gui/configurer/utils/pages_internal/items/load_items/iterate/iteration with storage c:cv root.temp
