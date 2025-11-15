execute store result score #c.lb.effect_ c.lb.dummy run random value 0..10

tp @s ~ ~ ~
execute if score #c.lb.effect_ c.lb.dummy matches 0 run return run place template c.lb:traps/lava ~-1 ~ ~-1
execute if score #c.lb.effect_ c.lb.dummy matches 1 run return run place template c.lb:traps/water_trap ~-1 ~ ~-1
execute if score #c.lb.effect_ c.lb.dummy matches 2 run return run function c.lb:block/lucky_block/effects/trap/pit_of_desires
execute if score #c.lb.effect_ c.lb.dummy matches 3 run return run function c.lb:block/lucky_block/effects/trap/anvil
execute if score #c.lb.effect_ c.lb.dummy matches 4 run return run function c.lb:block/lucky_block/effects/trap/tnt_circle
execute if score #c.lb.effect_ c.lb.dummy matches 5 run return run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 lava
execute if score #c.lb.effect_ c.lb.dummy matches 6 run return run function c.lb:block/lucky_block/effects/trap/zombie_tower/start
execute if score #c.lb.effect_ c.lb.dummy matches 7 run return run function c.lb:block/lucky_block/effects/trap/screams
execute if score #c.lb.effect_ c.lb.dummy matches 8 run return run function c.lb:block/lucky_block/effects/trap/explosive_cake/start
execute if score #c.lb.effect_ c.lb.dummy matches 9 run return run function c.lb:block/lucky_block/effects/trap/half_heart
execute if score #c.lb.effect_ c.lb.dummy matches 10 run return run summon villager ~ ~ ~ {Passengers:[{id:"minecraft:silverfish",Silent:1b},{id:"minecraft:tnt"}],attributes:[{id:"minecraft:movement_speed",base:1}]}
