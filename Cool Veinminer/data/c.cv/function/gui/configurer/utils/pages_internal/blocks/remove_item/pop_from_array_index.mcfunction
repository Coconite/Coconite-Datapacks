$data remove storage c:cv root.config.blocks[$(index)]
clear @p *[custom_data~{c:{cv:{tool:1b}}}]

execute unless data storage c:cv root.config.blocks[0] run data modify storage c:cv root.config.blocks set from storage c:cv root.config.blocks_default
