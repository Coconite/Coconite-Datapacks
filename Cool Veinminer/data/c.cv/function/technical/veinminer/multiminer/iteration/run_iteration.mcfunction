## Inside

# Set self score to 0
$scoreboard players set #veinminer.iteration.iterations.$(id) c.cv.dummy 0
# Copy max size of iteration
$scoreboard players operation #veinminer.iteration.max_iterations.$(id) c.cv.dummy = #veinminer.iteration.max_iterations c.cv.dummy
# Modify Iteration value
$data modify storage c:cv root.temp.veinminer.iteration.$(id).i set value 0
$data modify storage c:cv root.temp.veinminer.iteration.$(id).id set value $(id)

# Iterate
$function c.cv:technical/veinminer/multiminer/iteration/iterate with storage c:cv root.temp.veinminer.iteration.$(id)
