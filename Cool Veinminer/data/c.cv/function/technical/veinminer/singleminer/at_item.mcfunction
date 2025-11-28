# Set up iteration
scoreboard players set #veinminer.blockss.iteration c.cv.dummy 0

execute store result score #veinminer.blockss.max_iterations c.cv.dummy run data get storage c:cv root.config.blocks
scoreboard players remove #veinminer.blockss.max_iterations c.cv.dummy 1

scoreboard players set #veinminer.iteration.destroyed_blocks c.cv.dummy 0

data modify storage c:cv root.temp.iteration_blocks set value 0
scoreboard players set #veinminer.sub_iteration c.cv.dummy 0

# Summon marker
summon minecraft:marker ~ ~ ~ {Tags:["c.cv.entity.veinminer.initial_pos"]}

# Start iteration
function c.cv:technical/veinminer/singleminer/iterate_blocks with storage c:cv root.temp

# Tp Items
tp @e[tag=c.cv.entity.veinminer.item] @n[tag=c.cv.entity.veinminer.initial_pos]
kill @e[tag=c.cv.entity.veinminer.initial_pos]
tag @e[tag=c.cv.entity.veinminer.item] remove c.cv.entity.veinminer.item
