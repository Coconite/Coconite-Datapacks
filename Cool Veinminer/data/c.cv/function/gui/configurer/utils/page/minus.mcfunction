execute store result score #page c.cv.dummy run data get entity @s data.page
scoreboard players remove #page c.cv.dummy 1
execute store result entity @s data.page int 1 run scoreboard players get #page c.cv.dummy
