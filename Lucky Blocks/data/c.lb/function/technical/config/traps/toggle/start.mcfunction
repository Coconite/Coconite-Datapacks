scoreboard players operation #c.lb.trap_index c.lb.dummy = @s c.lb.trigger
scoreboard players remove #c.lb.trap_index c.lb.dummy 3

scoreboard players set @s c.lb.trigger 0

execute store result storage c:lucky_blocks root.temp.index int 1 run scoreboard players get #c.lb.trap_index c.lb.dummy
function c.lb:technical/config/traps/toggle/toggle_trap with storage c:lucky_blocks root.temp

# Redo array
data remove storage c:lucky_blocks root.config.lucky_blocks.traps_array

scoreboard players set #c.lb.iterations c.lb.dummy 0
data modify storage c:lucky_blocks root.temp.i set value 0
execute store result score #c.lb.max_iterations c.lb.dummy run data get storage c:lucky_blocks root.config.lucky_blocks.traps
function c.lb:technical/config/traps/toggle/iterate_traps with storage c:lucky_blocks root.temp

function c.lb:technical/config/load_page/traps/start
