execute store result score #index c.cv.dummy run data get entity @s data.page
scoreboard players operation #index c.cv.dummy *= #23 c.cv.dummy
$scoreboard players set #slot c.cv.dummy $(value)
scoreboard players remove #slot c.cv.dummy 1
execute if score #slot c.cv.dummy matches 8.. run scoreboard players remove #slot c.cv.dummy 1
execute if score #slot c.cv.dummy matches 16.. run scoreboard players remove #slot c.cv.dummy 1

scoreboard players operation #index c.cv.dummy += #slot c.cv.dummy
execute store result storage c:cv root.temp.index int 1 run scoreboard players get #index c.cv.dummy
function c.cv:gui/configurer/utils/pages_internal/blocks/remove_item/pop_from_array_index with storage c:cv root.temp

function c.cv:gui/configurer/utils/refresh_page/blocks
