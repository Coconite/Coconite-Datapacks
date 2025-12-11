# Effects
execute store result score #c.lb.effect c.lb.dummy run random value 0..3

execute if score #c.lb.effect c.lb.dummy matches 0 run function c.lb:block/lucky_block/effects/summon
execute if score #c.lb.effect c.lb.dummy matches 1 as @p at @s align xyz positioned ~.5 ~ ~.5 run function c.lb:block/lucky_block/effects/trap_start
execute if score #c.lb.effect c.lb.dummy matches 2 run function c.lb:block/lucky_block/effects/loot
execute if score #c.lb.effect c.lb.dummy matches 3 run function c.lb:block/lucky_block/effects/potion
