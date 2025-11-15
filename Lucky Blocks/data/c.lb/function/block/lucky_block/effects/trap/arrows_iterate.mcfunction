scoreboard players add #c.lb.effect_iteration c.lb.dummy 1
summon arrow ^ ^ ^ {Motion:[0,-5d,0],damage:1000}
summon arrow ^ ^ ^1 {Motion:[0,-5d,0],damage:1000}
summon arrow ^ ^ ^2 {Motion:[0,-5d,0],damage:1000}
summon arrow ^ ^ ^3 {Motion:[0,-5d,0],damage:1000}
summon arrow ^ ^ ^4 {Motion:[0,-5d,0],damage:1000}
summon arrow ^ ^ ^5 {Motion:[0,-5d,0],damage:1000}
summon arrow ^ ^ ^6 {Motion:[0,-5d,0],damage:1000}
execute if score #c.lb.effect_iteration c.lb.dummy matches ..16 rotated ~22.5 0 positioned ^ ^ ^ run function c.lb:block/lucky_block/effects/trap/arrows_iterate