$execute store result score #c.lb.effect_ c.lb.dummy run random value 0..$(max)
execute store result storage c:lucky_blocks root.temp.index int 1 run scoreboard players get #c.lb.effect_ c.lb.dummy

function c.lb:block/lucky_block/effects/get_trap_index with storage c:lucky_blocks root.temp
function c.lb:block/lucky_block/effects/run_trap with storage c:lucky_blocks root.temp

tp @s ~ ~ ~
