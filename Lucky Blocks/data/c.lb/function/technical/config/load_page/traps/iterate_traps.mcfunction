$data modify storage c:lucky_blocks root.temp.trap set from storage c:lucky_blocks root.config.lucky_blocks.traps[$(i)]

scoreboard players operation #c.lb.trap_index c.lb.dummy = #c.lb.iterations c.lb.dummy
scoreboard players add #c.lb.trap_index c.lb.dummy 3
data modify storage c:lucky_blocks root.temp.tellraw.text set from storage c:lucky_blocks root.temp.trap.name
execute store result storage c:lucky_blocks root.temp.tellraw.index int 1 run scoreboard players get #c.lb.trap_index c.lb.dummy

function c.lb:technical/config/load_page/traps/tellraw_name with storage c:lucky_blocks root.temp.tellraw

# Iterate
scoreboard players add #c.lb.iterations c.lb.dummy 1
execute if score #c.lb.iterations c.lb.dummy >= #c.lb.max_iterations c.lb.dummy run return fail
execute store result storage c:lucky_blocks root.temp.i int 1 run scoreboard players get #c.lb.iterations c.lb.dummy
function c.lb:technical/config/load_page/traps/iterate_traps with storage c:lucky_blocks root.temp
