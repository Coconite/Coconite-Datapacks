

execute if data storage c:lucky_blocks root.config.lucky_blocks{needs_op:0b} run tellraw @s {"color":"green","text":"[Traps Config]","hover_event":{action:"show_text","value":{"text":"Open Trap Config"}},"click_event":{action:"run_command","command":"/trigger c.lb.trigger set 2"}}
execute if data storage c:lucky_blocks root.config.lucky_blocks{needs_op:1b} run tellraw @s {"color":"green","text":"[Traps Config]","hover_event":{action:"show_text","value":{"text":"Open Trap Config"}},"click_event":{action:"run_command","command":"function c.lb:technical/config/load_page/traps/start"}}

execute if data storage c:lucky_blocks root.config.lucky_blocks{needs_op:0b} run tellraw @s [{"text":"Needed OP to Configure "},{"text":"[Disabled]","color":"red","hover_event":{action:"show_text","value":{"text":"Toggle OP needed"}},"click_event":{action:"run_command","command":"/trigger c.lb.trigger set -1"}}]
execute if data storage c:lucky_blocks root.config.lucky_blocks{needs_op:1b} run tellraw @s [{"text":"Needed OP to Configure "},{"text":"[Enabled]","color":"green","hover_event":{action:"show_text","value":{"text":"Toggle OP needed"}},"click_event":{action:"run_command","command":"/trigger c.lb.trigger set -1"}}]
