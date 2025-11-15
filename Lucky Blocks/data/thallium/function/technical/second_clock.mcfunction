schedule function thallium:technical/second_clock 1s replace

execute as @a at @s run function thallium:entity/player/second_clock

execute as @e[type=#thallium:should_tick] at @s run function thallium:entity/technical/loops/second_clock/start