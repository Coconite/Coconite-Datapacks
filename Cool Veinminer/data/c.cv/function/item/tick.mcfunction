clear @s *[custom_data~{c:{cv:{hard_config:1b}}}]

scoreboard players enable @s c.cv.configurer.trigger
execute unless score @s c.cv.configurer.trigger matches 0 run function c.cv:item/configurer/give/triggered
