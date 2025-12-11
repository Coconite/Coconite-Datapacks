execute if data storage c:lucky_blocks root.config.lucky_blocks{needs_op:1b} run return run data modify storage c:lucky_blocks root.config.lucky_blocks.needs_op set value 0b
data modify storage c:lucky_blocks root.config.lucky_blocks.needs_op set value 1b
