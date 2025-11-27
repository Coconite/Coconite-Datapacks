$data modify storage c:cv root.temp.blocks append from storage c:cv root.temp.block_item.components."minecraft:bundle_contents"[$(iterations)].id

# Iteration
execute if score #bundle.iterations c.cv.dummy >= #bundle.max_iterations c.cv.dummy run return fail
scoreboard players add #bundle.iterations c.cv.dummy 1
execute store result storage c:cv root.temp.bundle.iterations int 1 run scoreboard players get #bundle.iterations c.cv.dummy
function c.cv:technical/veinminer/singleminer/call_multiminer/iterate_bundle_contents with storage c:cv root.temp.bundle
