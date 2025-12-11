# Scoreboards

scoreboard objectives add c.lb.dummy dummy
scoreboard objectives add c.lb.trigger trigger

# First load
execute unless data storage c:lucky_blocks root.config{version:"1.1"} run function c.lb:technical/first_load
execute if data storage c:lucky_blocks root.config{hardcore:1} run function c.lb:technical/hardcore_advice

# Config
execute if data storage c:lucky_blocks root.config.lucky_blocks{needs_op:0b} as @a run function c.lb:technical/config/run
