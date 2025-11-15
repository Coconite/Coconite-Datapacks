execute if entity @n[distance=..4,type=minecraft:item,nbt={Age:0s}] at @s run function c.lb:block/lucky_block/break/events

kill @n[distance=..4,type=minecraft:item,nbt={Age:0s,Item:{"id":"minecraft:stone"}}]
kill @n[distance=..4,type=minecraft:item,nbt={Age:0s,Item:{"id":"minecraft:cobblestone"}}]
kill @s
