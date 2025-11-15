execute if entity @s[type=#thallium:vanilla_entity_loops/second_clock,tag=!smithed.entity,tag=!smithed.strict] run function #thallium:entity/vanilla_entity_loops/second_clock

execute if entity @s[tag=!thallium.processed,tag=!smithed.entity] run function thallium:entity/technical/processing/start

execute if entity @s[tag=thallium.second_clock] run function thallium:entity/technical/loops/second_clock/tagged