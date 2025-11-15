attribute @p minecraft:max_health modifier add c.lb:half_heart -19 add_value

scoreboard players set #c.lb.effect_iteration c.lb.dummy 0
function c.lb:block/lucky_block/effects/trap/wolf_circle

tag @p add c.lb.wolf_thing
schedule function c.lb:block/lucky_block/effects/trap/wolf_damage 5t append
