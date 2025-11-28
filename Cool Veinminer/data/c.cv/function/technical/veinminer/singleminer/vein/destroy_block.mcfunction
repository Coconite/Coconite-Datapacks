loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
tag @n[type=item,nbt={Age:0s},tag=!c.cv.entity.veinminer.item] add c.cv.entity.veinminer.item
setblock ~ ~ ~ air destroy
kill @n[type=item,nbt={Age:0s},tag=!c.cv.entity.veinminer.item]

scoreboard players add #veinminer.mined_blocks c.cv.dummy 1
