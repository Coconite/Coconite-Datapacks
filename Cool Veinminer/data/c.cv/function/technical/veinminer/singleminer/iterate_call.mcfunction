execute if score #veinminer.iteration c.cv.dummy >= #veinminer.max_iterations c.cv.dummy run return fail
scoreboard players add #veinminer.iteration c.cv.dummy 1
execute store result storage c:cv root.temp.iteration_blocks int 1 run scoreboard players get #veinminer.iteration c.cv.dummy

function c.cv:technical/veinminer/singleminer/iterate_blocks with storage c:cv root.temp
