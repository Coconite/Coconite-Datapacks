# Checks for actions
execute if items entity @p player.cursor *[custom_data~{c:{cv:{config:1b,important:1b}}}] run function c.cv:gui/configurer/utils/refresh_page/items

## Pages System
# Get data
execute store result score #page c.cv.dummy run data get entity @s data.page

# Return
execute unless items entity @s container.0 *[custom_data~{c:{cv:{config:1b}}}] if data entity @s data{page:0} run return run function c.cv:gui/configurer/set_page/main_page
execute unless items entity @s container.0 *[custom_data~{c:{cv:{config:1b}}}] unless score #page c.cv.dummy matches ..0 run function c.cv:gui/configurer/utils/update/blocks/minus

# Next page
execute unless items entity @s container.8 *[custom_data~{c:{cv:{config:1b}}}] run function c.cv:gui/configurer/utils/update/blocks/plus
execute unless items entity @s container.17 *[custom_data~{c:{cv:{config:1b}}}] run function c.cv:gui/configurer/utils/update/blocks/plus
execute unless items entity @s container.26 *[custom_data~{c:{cv:{config:1b}}}] run function c.cv:gui/configurer/utils/update/blocks/plus

## Items System
# New item
execute if items entity @s container.* *[!custom_data~{c:{cv:{config:1b}}}] run function c.cv:gui/configurer/utils/pages_internal/blocks/handle_new_item

# Remove
execute if items entity @p player.cursor *[custom_data~{c:{cv:{config:1b,tool:1b}}}] run function c.cv:gui/configurer/utils/pages_internal/blocks/remove_item/check_inverse
execute if items entity @p inventory.* *[custom_data~{c:{cv:{config:1b,tool:1b}}}] run function c.cv:gui/configurer/utils/pages_internal/blocks/remove_item/start
execute if items entity @p hotbar.* *[custom_data~{c:{cv:{config:1b,tool:1b}}}] run function c.cv:gui/configurer/utils/pages_internal/blocks/remove_item/start

execute if entity @e[type=item,predicate=c.cv:entity/item/is_tool_item] run function c.cv:gui/configurer/utils/pages_internal/blocks/remove_item/start

# Fix thing
kill @e[type=item,predicate=c.cv:entity/item/is_config_item]
