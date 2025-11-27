data modify storage c:cv root.temp.item set from entity @p Inventory[{components:{"minecraft:custom_data":{c:{cv:{config:1b,tool:1b}}}}}]
execute if entity @n[type=item,predicate=c.cv:entity/item/is_tool_item] run item replace block 95290 0 95290 container.1 from entity @n[type=item,predicate=c.cv:entity/item/is_tool_item] container.0

execute unless items entity @p inventory.* *[custom_data~{c:{cv:{config:1b,tool:1b}}}] \
    unless items entity @p hotbar.* *[custom_data~{c:{cv:{config:1b,tool:1b}}}] run data modify storage c:cv root.temp.item set from block 95290 0 95290 Items[{Slot:1b}]

function c.cv:gui/configurer/utils/pages_internal/items/remove_item/pop_from_array with storage c:cv root.temp.item
function c.cv:gui/configurer/utils/refresh_page/items