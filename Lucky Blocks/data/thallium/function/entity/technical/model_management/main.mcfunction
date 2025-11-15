execute if entity @s[type=minecraft:wandering_trader,tag=thallium.entity.custom_model.mainhand] run item replace entity @s weapon.mainhand from entity @s armor.chest

item modify entity @s[tag=thallium.entity.custom_model.head] armor.head thallium:entity/set_state
item modify entity @s[tag=thallium.entity.custom_model.mainhand] weapon.mainhand thallium:entity/set_state