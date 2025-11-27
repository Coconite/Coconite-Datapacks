$data modify storage c:cv root.temp.current_block set from storage c:cv root.temp.blocks[$(iteration)]
function c.cv:technical/veinminer/multiminer/destroy_blocks/destroy with storage c:cv root.temp

# Reset iterations
execute if score #veinminer.iteration c.cv.dummy >= #veinminer.max_iterations c.cv.dummy run return fail
scoreboard players add #veinminer.iteration c.cv.dummy 1
execute store result storage c:cv root.temp.iteration int 1 run scoreboard players get #veinminer.iteration c.cv.dummy

function c.cv:technical/veinminer/multiminer/destroy_blocks/iterate with storage c:cv root.temp
