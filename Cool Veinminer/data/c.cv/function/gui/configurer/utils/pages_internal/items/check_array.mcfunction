$execute if data storage c:cv root.config.items[$(item)] run return run playsound minecraft:entity.villager.no master @a
function c.cv:gui/configurer/utils/pages_internal/items/add_item_to_array with storage c:cv root.temp.item_handler
summon item ~ ~ ~ {Item:{id:"minecraft:stone","count":1},Tags:["c.cv.entity.item.blank"]}
execute as @n[tag=c.cv.entity.item.blank] run function c.cv:gui/configurer/utils/pages_internal/items/summon_item
