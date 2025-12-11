scoreboard players set @s c.lb.trigger 0

playsound minecraft:ui.button.click ui @s

execute if data storage c:lucky_blocks root.config.lucky_blocks{needs_op:1b} run return run dialog show @s c.lb:config
function c.lb:technical/config/tellraw
