$data modify storage c:lucky_blocks root.temp.trap set from storage c:lucky_blocks root.config.lucky_blocks.traps[$(index)]

$execute if data storage c:lucky_blocks root.temp.trap{disabled:0b} run return run data modify storage c:lucky_blocks root.config.lucky_blocks.traps[$(index)].disabled set value 1b
$data modify storage c:lucky_blocks root.config.lucky_blocks.traps[$(index)].disabled set value 0b
