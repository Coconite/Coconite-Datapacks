$execute if block ~ ~ ~ $(current_block) run scoreboard players set #veinminer.iteration.destroyed_blocks c.cv.dummy 1

$execute if block ~ ~ ~ $(current_block) run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
tag @n[type=item,nbt={Age:0s},tag=!c.cv.entity.veinminer.item] add c.cv.entity.veinminer.item
$execute if block ~ ~ ~ $(current_block) run setblock ~ ~ ~ air destroy
kill @n[type=item,nbt={Age:0s},tag=!c.cv.entity.veinminer.item]
