tag @s remove c.lb.hardcore_test

execute if score #c.lb.immediate_respawn c.lb.dummy matches 1.. run gamerule doImmediateRespawn false
execute if score #c.lb.keep_inventory c.lb.dummy matches 1.. run gamerule keepInventory false

data modify storage c:lucky_blocks root.config.hardcore set value 0
execute if entity @s[gamemode=spectator] run data modify storage c:lucky_blocks root.config.hardcore set value 1

execute if score #c.lb.gamemode c.lb.dummy matches 0 run gamemode survival
execute if score #c.lb.gamemode c.lb.dummy matches 1 run gamemode creative
execute if score #c.lb.gamemode c.lb.dummy matches 2 run gamemode adventure
execute if score #c.lb.gamemode c.lb.dummy matches 3 run gamemode spectator
