# Back
execute unless items entity @s container.0 *[custom_data~{c:{cv:{config:1b}}}] run return run function c.cv:gui/configurer/set_page/main_page

# Reset
execute unless items entity @s container.11 *[custom_data~{c:{cv:{config:1b}}}] run return run function c.cv:gui/configurer/utils/pages_internal/extra_config/click_buttons/shift
execute unless items entity @s container.13 *[custom_data~{c:{cv:{config:1b}}}] run return run function c.cv:gui/configurer/utils/pages_internal/extra_config/click_buttons/size
execute unless items entity @s container.15 *[custom_data~{c:{cv:{config:1b}}}] run return run function c.cv:gui/configurer/utils/pages_internal/extra_config/click_buttons/op
