execute store result score $current_iteration c.cv.dummy run data get storage c:cv root.temp.veinminer.iteration.misc.id
execute if score $current_iteration c.cv.dummy >= #veinminer.max_total_iterations c.cv.dummy run return fail
scoreboard players add $current_iteration c.cv.dummy 1
execute store result storage c:cv root.temp.veinminer.iteration.misc.id int 1 run scoreboard players get $current_iteration c.cv.dummy

function c.cv:technical/veinminer/multiminer/iteration/run_iteration with storage c:cv root.temp.veinminer.iteration.misc
