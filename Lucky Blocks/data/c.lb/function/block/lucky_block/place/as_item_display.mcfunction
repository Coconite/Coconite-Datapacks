$data merge entity @s {Tags:["smithed.block","smithed.entity","smithed.strict","thallium.entity","thallium.entity.block","thallium.second_clock","thallium.tick","thallium.registered","thallium.entity.block.update_light","c.lb.block","c.lb.block.lucky_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_name":"Lucky Block","minecraft:item_model":"c.lb:block/$(id)"}},CustomName:"Lucky Block"}
$tag @s add c.lb.block.lucky_block.$(id)

function thallium:block/lighting/main
