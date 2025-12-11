scoreboard players set @s c.lb.trigger 0

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

tellraw @s [{"text":"0","font":"c.lb:give_menu"},{"text":"  ","font":"minecraft:default"},{"text":"Lucky Blocks Config","font":"c.lb:tooltip"},{"text":"  ","font":"minecraft:default"},{"text":"0","font":"c.lb:give_menu"}]

tellraw @s "\n\n\n"

scoreboard players set #c.lb.iterations c.lb.dummy 0
data modify storage c:lucky_blocks root.temp.i set value 0
execute store result score #c.lb.max_iterations c.lb.dummy run data get storage c:lucky_blocks root.config.lucky_blocks.traps
function c.lb:technical/config/load_page/traps/iterate_traps with storage c:lucky_blocks root.temp
