schedule function c.cv:technical/clock_second 1s replace
execute as @e[tag=c.should_tick,tag=c.entity,type=#c.cv:scheduled/clock_second] run function c.cv:entity/clock_second
execute as @a at @s run function c.cv:entity/player/clock_second
