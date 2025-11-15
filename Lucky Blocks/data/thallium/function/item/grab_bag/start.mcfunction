scoreboard players reset #thallium.slot thallium.dummy
scoreboard players set #thallium.key_check thallium.dummy -1

playsound thallium:item.grab_bag player @a[distance=..8] ~ ~ ~ 0.5

data remove storage thallium:temp root

execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{thallium:{grab_bag:{}}}] run function thallium:item/grab_bag/mainhand
execute if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{thallium:{grab_bag:{}}}] unless items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{thallium:{grab_bag:{}}}] run function thallium:item/grab_bag/offhand

execute if data storage thallium:temp root.grab_bag.key_id run function thallium:item/grab_bag/key_check with storage thallium:temp root.grab_bag

execute if score #thallium.key_check thallium.dummy matches 0 run return fail

execute if score #thallium.slot thallium.dummy matches 1 if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand thallium:count/remove_1
execute if score #thallium.slot thallium.dummy matches 2 if entity @s[gamemode=!creative] run item modify entity @s weapon.offhand thallium:count/remove_1

function thallium:item/grab_bag/open with storage thallium:temp root.grab_bag