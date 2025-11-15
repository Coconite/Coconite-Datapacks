scoreboard players add #c.lb.effect_iteration c.lb.dummy 1
summon tnt ^ ^ ^5 {fuse:50}
execute if score #c.lb.effect_iteration c.lb.dummy matches ..16 rotated ~22.5 0 run function c.lb:block/lucky_block/effects/trap/tnt_circle_iterate