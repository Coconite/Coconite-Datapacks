execute if score #c.lb.effect_iteration c.lb.dummy matches 10.. run return fail
scoreboard players add #c.lb.effect_iteration c.lb.dummy 1
data merge entity @s {equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":7864064}}}}
ride @s mount @n[type=zombie,predicate=!thallium:entity_properties/has_passenger]
execute summon zombie run function c.lb:block/lucky_block/effects/trap/zombie_tower/iteration