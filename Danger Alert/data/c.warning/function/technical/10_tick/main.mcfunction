schedule function c.warning:technical/10_tick/main 5t replace
execute as @e[type=#c.warning:scheduled/10_tick,limit=32,sort=random] at @s run function c.warning:technical/10_tick/as_entity
