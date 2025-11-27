scoreboard players set #iterations_2 c.cv.dummy 0
execute store result score #max_iterations_2 c.cv.dummy run data get storage c:cv root.temp.item.components."minecraft:bundle_contents"
scoreboard players remove #max_iterations_2 c.cv.dummy 1
execute unless score #max_iterations_2 c.cv.dummy matches 1.. run return fail

data modify storage c:cv root.temp.iterations set value 0

function c.cv:gui/configurer/utils/pages_internal/blocks/handle_components/iteration/iterate with storage c:cv root.temp
