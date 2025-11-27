scoreboard players reset @s c.cv.configurer.trigger

execute if data storage c:cv root.config{op_needed:1b} run return run dialog show @s c.cv:obtain_configurer
function c.cv:item/configurer/give/loot
