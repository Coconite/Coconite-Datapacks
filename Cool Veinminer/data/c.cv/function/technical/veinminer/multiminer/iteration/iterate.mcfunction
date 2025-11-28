# DESTROY BLOCK
function c.cv:technical/veinminer/multiminer/destroy_blocks/start

# CREATE MORE ITERATIONS
## Get block from array with self value
$data modify storage c:cv root.temp.veinminer.iteration.$(id).block set from storage c:cv root.temp.blocks[$(i)]
## Make new iterations from near blocks
$function c.cv:technical/veinminer/multiminer/iteration/continue_iteration with storage c:cv root.temp.veinminer.iteration.$(id)

# ITERATE THIS ITERATION

## If this iteration is bigger than the limit, break

$execute if score #veinminer.iteration.iterations.$(id) c.cv.dummy >= #veinminer.iteration.max_iterations.$(id) c.cv.dummy run return fail
## Add 1 to the iteration value
$scoreboard players add #veinminer.iteration.iterations.$(id) c.cv.dummy 1
## Get iteration value
$execute store result storage c:cv root.temp.veinminer.iteration.$(id).i int 1 run scoreboard players get #veinminer.iteration.iterations.$(id) c.cv.dummy
## Iterate
$function c.cv:technical/veinminer/multiminer/iteration/iterate with storage c:cv root.temp.veinminer.iteration.$(id)
