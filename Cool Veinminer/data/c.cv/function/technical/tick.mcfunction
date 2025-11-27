execute as @a at @s run function c.cv:entity/player/tick
execute as @e[tag=c.should_tick,tag=c.entity,type=#c.cv:scheduled/tick] at @s run function c.cv:entity/tick
