$scoreboard players reset @s c.cv.item.$(iterations)
$advancement revoke @s only c.cv:technical/tick/scores/item_$(iterations)

# Iterate
execute if score #iterations_3 c.cv.dummy >= #max_iterations_3 c.cv.dummy run return fail
scoreboard players add #iterations_3 c.cv.dummy 1
execute store result storage c:cv root.temp.iterations int 1 run scoreboard players get #iterations_3 c.cv.dummy

function c.cv:technical/veinminer/reset_score/iterate with storage c:cv root.temp