# Reset score
function c.cv:technical/veinminer/reset_score/start

execute if data storage c:cv root.config{sneak_needed:1b} unless predicate c.cv:entity/player/raw_input/shift run return fail

# Multiminer set id to 0
data modify storage c:cv root.temp.multiminer.id set value 0

# Singleminer
execute at @n[type=item,nbt={Age:0s}] align xyz positioned ~.5 ~.5 ~.5 run function c.cv:technical/veinminer/singleminer/at_item
