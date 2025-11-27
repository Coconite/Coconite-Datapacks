# Remove count & components
$data modify storage c:cv root.temp.item.components."minecraft:bundle_contents"[$(iterations)].count set value 1
$data remove storage c:cv root.temp.item.components."minecraft:bundle_contents"[$(iterations)].components

# Iterate
execute if score #iterations_2 c.cv.dummy >= #max_iterations_2 c.cv.dummy run return fail
scoreboard players add #iterations_2 c.cv.dummy 1
execute store result storage c:cv root.temp.iterations int 1 run scoreboard players get #iterations_2 c.cv.dummy
function c.cv:gui/configurer/utils/pages_internal/blocks/handle_components/iteration/iterate with storage c:cv root.temp
