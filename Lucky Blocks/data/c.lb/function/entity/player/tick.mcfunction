scoreboard players enable @s c.lb.trigger

execute if score @s c.lb.trigger matches -1 run function c.lb:technical/config/try_op
execute if score @s c.lb.trigger matches 1 run function c.lb:technical/config/run
execute if score @s c.lb.trigger matches 2 run function c.lb:technical/config/load_page/traps/try
execute if score @s c.lb.trigger matches 3.. run function c.lb:technical/config/traps/toggle/try
