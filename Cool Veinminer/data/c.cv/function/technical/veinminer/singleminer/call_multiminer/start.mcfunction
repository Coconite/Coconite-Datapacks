# Setup Iteration
scoreboard players set #bundle.iterations c.cv.dummy 0
execute store result score #bundle.max_iterations c.cv.dummy run data get storage c:cv root.temp.block_item.components."minecraft:bundle_contents"
scoreboard players remove #bundle.max_iterations c.cv.dummy 1
data modify storage c:cv root.temp.bundle.iterations set value 0

data remove storage c:cv root.temp.blocks

# Iterate
function c.cv:technical/veinminer/singleminer/call_multiminer/iterate_bundle_contents with storage c:cv root.temp.bundle

# Run multiminer
function c.cv:technical/veinminer/multiminer/start

# Iterate main blocks

#function c.cv:technical/veinminer/singleminer/iterate_call

# execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["c.cv.entity.veinminer.get_pos"]}
# execute store result storage c:cv root.temp.pos.x int 1 run data get entity @n[tag=c.cv.entity.veinminer.get_pos] Pos[0]
# execute store result storage c:cv root.temp.pos.y int 1 run data get entity @n[tag=c.cv.entity.veinminer.get_pos] Pos[1]
# execute store result storage c:cv root.temp.pos.z int 1 run data get entity @n[tag=c.cv.entity.veinminer.get_pos] Pos[2]

# kill @n[tag=c.cv.entity.veinminer.get_pos]

# tag @s add c.cv.entity.player.miner

# schedule function c.cv:technical/veinminer/multiminer/schedule 1t append