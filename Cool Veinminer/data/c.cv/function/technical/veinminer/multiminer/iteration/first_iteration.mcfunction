## Outside

# Clean data
data remove storage c:cv root.temp.veinminer.iteration

# Treat with the first iteration, we're joining the system from outside
data modify storage c:cv root.temp.veinminer.iteration.misc.id set value 0

# Get a limit to iterate the array for all iterations
execute store result score #veinminer.iteration.max_iterations c.cv.dummy run data get storage c:cv root.temp.blocks
scoreboard players remove #veinminer.iteration.max_iterations c.cv.dummy 1

# Join the system with 0
function c.cv:technical/veinminer/multiminer/iteration/run_iteration with storage c:cv root.temp.veinminer.iteration.misc
