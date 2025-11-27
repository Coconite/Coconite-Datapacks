$data remove storage c:cv root.config.items[$(index)]
clear @p *[custom_data~{c:{cv:{tool:1b}}}]

execute unless data storage c:cv root.config.items[0] run data modify storage c:cv root.config.items set from storage c:cv root.config.items_default

# Get Separated Items
function c.cv:gui/configurer/utils/get_separated_items/start
function c.cv:gui/configurer/utils/create_scores/start
