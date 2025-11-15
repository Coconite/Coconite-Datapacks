scoreboard players set #c.lb.temp c.lb.dummy 0

execute unless entity @n[type=minecraft:item_display,tag=smithed.block,distance=..0.99] run scoreboard players set #c.lb.temp c.lb.dummy 1

data modify storage c:lucky_blocks root.temp.id set from block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_data".thallium.block.id

execute if score #c.lb.temp c.lb.dummy matches 0 run function c.lb:block/lucky_block/place/fail
execute if score #c.lb.temp c.lb.dummy matches 1 run function c.lb:block/lucky_block/place/succeed
