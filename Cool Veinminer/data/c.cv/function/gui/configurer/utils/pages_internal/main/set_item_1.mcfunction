data remove storage c:cv root.temp.item
$data modify storage c:cv root.temp.item set from storage c:cv root.config.blocks[$(index)]
data modify storage c:cv root.temp.item.components."minecraft:custom_data" set value {c:{cv:{config:1b,hard_config:1b}}}
data modify storage c:cv root.temp.item.components."minecraft:item_name" set value "Blocks"
data modify storage c:cv root.temp.item.Slot set value 13b
data modify entity @s Items[{Slot:13b}] set from storage c:cv root.temp.item
