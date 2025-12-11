$data modify storage c:lucky_blocks root.temp.trap set from storage c:lucky_blocks root.config.lucky_blocks.traps[$(i)]
execute if data storage c:lucky_blocks root.temp.trap{disabled:0b} run data modify storage c:lucky_blocks root.config.lucky_blocks.traps_array append from storage c:lucky_blocks root.temp.trap.id

# Iterate
scoreboard players add #c.lb.iterations c.lb.dummy 1
execute if score #c.lb.iterations c.lb.dummy >= #c.lb.max_iterations c.lb.dummy run return fail
execute store result storage c:lucky_blocks root.temp.i int 1 run scoreboard players get #c.lb.iterations c.lb.dummy
function c.lb:technical/config/traps/toggle/iterate_traps with storage c:lucky_blocks root.temp
