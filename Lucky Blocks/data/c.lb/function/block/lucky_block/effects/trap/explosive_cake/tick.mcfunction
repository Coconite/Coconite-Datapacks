scoreboard players add @s c.lb.dummy 1
particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 2
particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 1 2
particle minecraft:wax_on ~ ~ ~ 0.2 0.2 0.2 0.2 2

execute if score @s c.lb.dummy matches 59 run function c.lb:block/lucky_block/effects/trap/explosive_cake/spawn_another
