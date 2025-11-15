#Sets a scoreboard value based on the highest adjacent light level

execute unless score #light_level thallium.dummy matches 1.. if predicate thallium:location_check/light/0 run scoreboard players set #light_level thallium.dummy 0
execute unless score #light_level thallium.dummy matches 2.. if predicate thallium:location_check/light/1 run scoreboard players set #light_level thallium.dummy 1
execute unless score #light_level thallium.dummy matches 3.. if predicate thallium:location_check/light/2 run scoreboard players set #light_level thallium.dummy 2
execute unless score #light_level thallium.dummy matches 4.. if predicate thallium:location_check/light/3 run scoreboard players set #light_level thallium.dummy 3
execute unless score #light_level thallium.dummy matches 5.. if predicate thallium:location_check/light/4 run scoreboard players set #light_level thallium.dummy 4
execute unless score #light_level thallium.dummy matches 6.. if predicate thallium:location_check/light/5 run scoreboard players set #light_level thallium.dummy 5
execute unless score #light_level thallium.dummy matches 7.. if predicate thallium:location_check/light/6 run scoreboard players set #light_level thallium.dummy 6
execute unless score #light_level thallium.dummy matches 8.. if predicate thallium:location_check/light/7 run scoreboard players set #light_level thallium.dummy 7
execute unless score #light_level thallium.dummy matches 9.. if predicate thallium:location_check/light/8 run scoreboard players set #light_level thallium.dummy 8
execute unless score #light_level thallium.dummy matches 10.. if predicate thallium:location_check/light/9 run scoreboard players set #light_level thallium.dummy 9
execute unless score #light_level thallium.dummy matches 11.. if predicate thallium:location_check/light/10 run scoreboard players set #light_level thallium.dummy 10
execute unless score #light_level thallium.dummy matches 12.. if predicate thallium:location_check/light/11 run scoreboard players set #light_level thallium.dummy 11
execute unless score #light_level thallium.dummy matches 13.. if predicate thallium:location_check/light/12 run scoreboard players set #light_level thallium.dummy 12
execute unless score #light_level thallium.dummy matches 14.. if predicate thallium:location_check/light/13 run scoreboard players set #light_level thallium.dummy 13
execute unless score #light_level thallium.dummy matches 15.. if predicate thallium:location_check/light/14 run scoreboard players set #light_level thallium.dummy 14
execute if predicate thallium:location_check/light/15 run scoreboard players set #light_level thallium.dummy 15
execute if predicate thallium:location_check/can_see_sky run scoreboard players set #has_skylight thallium.dummy 1
