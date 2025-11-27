$data modify storage c:cv root.temp.item set from entity @s Items[{Slot:$(slot)b}]
data remove storage c:cv root.temp.item.Slot
data remove storage c:cv root.temp.item.components
data modify storage c:cv root.temp.item.count set value 1b

function c.cv:gui/configurer/utils/pages_internal/items/check_array with storage c:cv root.temp
