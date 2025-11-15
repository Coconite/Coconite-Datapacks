scoreboard players add #c.lb.effect_iteration c.lb.dummy 1
summon wolf ^ ^ ^5 {AngerTime:10000,Tags:["c.lb.wolf"]}
execute if score #c.lb.effect_iteration c.lb.dummy matches ..16 rotated ~22.5 0 run function c.lb:block/lucky_block/effects/trap/wolf_circle