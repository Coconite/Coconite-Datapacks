item replace block 95290 0 95290 container.3 with minecraft:stone
$data modify storage c:cv root.temp.item set from entity @s Items[{Slot:$(slot)b}]
data remove storage c:cv root.temp.item.Slot

# Save item & components
data modify block 95290 0 95290 Items[{Slot:3b}].id set from storage c:cv root.temp.item.id
data modify block 95290 0 95290 Items[{Slot:3b}].components set from storage c:cv root.temp.item.components

data remove storage c:cv root.temp.item.components
data modify storage c:cv root.temp.item.count set value 1b

function c.cv:gui/configurer/utils/pages_internal/items/check_array with storage c:cv root.temp
