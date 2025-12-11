
$execute if data storage c:lucky_blocks root.temp.trap{disabled:0b} run return run tellraw @s [{"text":"[$(text)] "},{"text":"[Enabled]","color":"green",hover_event:{action:"show_text","value":{"text":"Toggle $(text)"}},click_event:{action:"run_command",command:"/trigger c.lb.trigger set $(index)"}}]
$tellraw @s [{"text":"[$(text)] "},{"text":"[Disabled]","color":"red",hover_event:{action:"show_text","value":{"text":"Toggle $(text)"}},click_event:{action:"run_command",command:"/trigger c.lb.trigger set $(index)"}}]
