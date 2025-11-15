execute if predicate thallium:entity_properties/walking if predicate thallium:entity_properties/is_on_ground run function thallium:entity/step

execute store result score @s thallium.hurt_time run data get entity @s HurtTime
execute if score @s thallium.entity.step_sound matches 16.. run function thallium:entity/technical/sounds/step

execute if predicate thallium:entity_properties/walking unless entity @s[tag=thallium.entity.walking] run function thallium:entity/technical/walk_start
execute unless predicate thallium:entity_properties/walking if entity @s[tag=thallium.entity.walking] run function thallium:entity/technical/walk_stop

execute if entity @s[tag=thallium.entity.custom_model] run function thallium:entity/technical/model_management/main

execute if predicate thallium:entity_properties/hurt/true if entity @s[tag=!thallium.entity.hurt] run function thallium:entity/technical/hurt_start
execute if predicate thallium:entity_properties/hurt/false if entity @s[tag=thallium.entity.hurt] run function thallium:entity/technical/hurt_stop

execute if entity @s[tag=thallium.entity.no_pitch] run rotate @s ~ 0

function #thallium:entity/tick