clear @p *[custom_data~{c:{cv:{tool:1b}}}]
execute store result score #start c.cv.dummy run data get entity @s data.page
scoreboard players operation #start c.cv.dummy *= #24 c.cv.dummy

scoreboard players set #iterations c.cv.dummy 0
execute store result storage c:cv root.temp.iterations.value int 1 run scoreboard players get #iterations c.cv.dummy
function c.cv:gui/configurer/utils/pages_internal/blocks/remove_item/iterate_slots with storage c:cv root.temp.iterations
