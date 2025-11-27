# Remove all scores
$scoreboard objectives remove c.cv.item.$(iterations)

# Iterate
execute if score #iterations c.cv.dummy >= #max_iterations c.cv.dummy run return fail
scoreboard players add #iterations c.cv.dummy 1
execute store result storage c:cv root.temp.iterations int 1 run scoreboard players get #iterations c.cv.dummy

function c.cv:gui/configurer/utils/create_scores/iteration_remove_scores with storage c:cv root.temp
