$data modify storage c:cv root.temp.item set from entity @s Items[{Slot:$(slot)b}]
data remove storage c:cv root.temp.item.Slot
data modify storage c:cv root.temp.item.count set value 1b

function c.cv:gui/configurer/utils/pages_internal/blocks/handle_components/start

function c.cv:gui/configurer/utils/pages_internal/blocks/check_array with storage c:cv root.temp
