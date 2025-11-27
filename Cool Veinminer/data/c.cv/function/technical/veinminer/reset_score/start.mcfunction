# Setup Iteration
scoreboard players set #iterations_3 c.cv.dummy 0
execute store result score #max_iterations_3 c.cv.dummy run data get storage c:cv root.config.separated_items
scoreboard players remove #max_iterations_3 c.cv.dummy 1
execute store result storage c:cv root.temp.iterations int 1 run scoreboard players get #iterations c.cv.dummy

# Start iteration
function c.cv:technical/veinminer/reset_score/iterate with storage c:cv root.temp
