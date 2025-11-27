$data modify storage c:cv root.temp.item.namespace set from storage c:cv root.config.separated_items[$(iterations)].namespace
$data modify storage c:cv root.temp.item.id set from storage c:cv root.config.separated_items[$(iterations)].id
data modify storage c:cv root.temp.item.count set from storage c:cv root.temp.iterations

function c.cv:gui/configurer/utils/create_scores/create_score with storage c:cv root.temp.item

# Iterate
execute if score #iterations c.cv.dummy >= #max_iterations c.cv.dummy run return fail
scoreboard players add #iterations c.cv.dummy 1
execute store result storage c:cv root.temp.iterations int 1 run scoreboard players get #iterations c.cv.dummy

function c.cv:gui/configurer/utils/create_scores/iteration_create_scores with storage c:cv root.temp
