# Checks for refresh
execute if entity @e[type=item,predicate=c.cv:entity/item/is_important_item] run function c.cv:gui/configurer/utils/refresh_page/main
execute if items entity @p player.cursor *[custom_data~{c:{cv:{config:1b,important:1b}}}] run function c.cv:gui/configurer/utils/refresh_page/main
execute if items entity @s container.* *[!custom_data~{c:{cv:{config:1b}}}] run function c.cv:gui/configurer/utils/refresh_page/main
kill @e[type=item,predicate=c.cv:entity/item/is_config_item]

# Change page
execute unless items entity @s container.11 *[custom_data~{c:{cv:{config:1b}}}] run return run function c.cv:gui/configurer/set_page/items
execute unless items entity @s container.13 *[custom_data~{c:{cv:{config:1b}}}] run return run function c.cv:gui/configurer/set_page/blocks
execute unless items entity @s container.15 *[custom_data~{c:{cv:{config:1b}}}] run return run function c.cv:gui/configurer/set_page/extra_config
