summon minecraft:marker ~ ~ ~ {Tags:["c.cv.entity.veinminer.initial_pos"]}
data remove storage c:cv root.temp.appended_pos

function c.cv:technical/veinminer/multiminer/iteration/start

# Tp Items
tp @e[tag=c.cv.entity.veinminer.item] @n[tag=c.cv.entity.veinminer.initial_pos]
kill @e[tag=c.cv.entity.veinminer.initial_pos]
tag @e[tag=c.cv.entity.veinminer.item] remove c.cv.entity.veinminer.item
