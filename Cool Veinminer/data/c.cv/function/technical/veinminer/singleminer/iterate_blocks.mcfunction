# Setup Iteration (For mining blocks)
$data modify storage c:cv root.temp.block set from storage c:cv root.config.blocks[$(iteration_blocks)].id
$data modify storage c:cv root.temp.block_item set from storage c:cv root.config.blocks[$(iteration_blocks)]

function c.cv:technical/veinminer/singleminer/handle_bundles

# Iterate
execute if score #veinminer.blockss.iteration c.cv.dummy >= #veinminer.blockss.max_iterations c.cv.dummy run return fail
scoreboard players add #veinminer.blockss.iteration c.cv.dummy 1
execute store result storage c:cv root.temp.iteration_blocks int 1 run scoreboard players get #veinminer.blockss.iteration c.cv.dummy

function c.cv:technical/veinminer/singleminer/iterate_blocks with storage c:cv root.temp
