attribute @s minecraft:max_health modifier remove c.lb:half_heart
execute if entity @s[tag=c.lb.hardcore_test] run function c.lb:entity/player/hardcore_respawn
