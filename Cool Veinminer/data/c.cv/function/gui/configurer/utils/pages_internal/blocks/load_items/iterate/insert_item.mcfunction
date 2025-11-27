$execute unless data storage c:cv root.config.blocks[$(index)] run return fail

forceload add 95290 95290 95290 95290
setblock 95290 0 95290 barrel

$data modify block 95290 0 95290 Items[{Slot:0b}] set from storage c:cv root.config.blocks[$(index)]
data modify block 95290 0 95290 Items[{Slot:0b}].components."minecraft:custom_data".c.cv.config set value 1b
data modify block 95290 0 95290 Items[{Slot:0b}].components."minecraft:custom_data".c.cv.tool set value 1b
$item replace entity @s container.$(slot) from block 95290 0 95290 container.0
