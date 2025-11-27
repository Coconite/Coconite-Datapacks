# Setup Iteration
scoreboard players set #veinminer.iteration c.cv.dummy 0
execute store result score #veinminer.max_iterations c.cv.dummy run data get storage c:cv root.temp.blocks
scoreboard players remove #veinminer.max_iterations c.cv.dummy 1
execute unless score #veinminer.max_iterations c.cv.dummy matches 1.. run return fail

execute store result storage c:cv root.temp.iteration int 1 run scoreboard players get #veinminer.iteration c.cv.dummy
# Start iterations
function c.cv:technical/veinminer/multiminer/destroy_blocks/iterate with storage c:cv root.temp
