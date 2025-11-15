schedule function thallium:technical/ten_second_clock 10s replace

execute as @a at @s run function thallium:entity/player/ten_second_clock

execute as @e[type=#thallium:should_tick] at @s run function thallium:entity/technical/loops/ten_second_clock/start