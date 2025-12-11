execute store success score #c.lb.immediate_respawn c.lb.dummy run gamerule doImmediateRespawn true
execute store success score #c.lb.keep_inventory c.lb.dummy run gamerule keepInventory true

execute if entity @s[gamemode=survival] run scoreboard players set #c.lb.gamemode c.lb.dummy 0
execute if entity @s[gamemode=creative] run scoreboard players set #c.lb.gamemode c.lb.dummy 1
execute if entity @s[gamemode=adventure] run scoreboard players set #c.lb.gamemode c.lb.dummy 2
execute if entity @s[gamemode=spectator] run scoreboard players set #c.lb.gamemode c.lb.dummy 3

gamemode survival @s[gamemode=spectator]

spawnpoint @s ~ ~ ~
kill @s

tag @s add c.lb.hardcore_test
