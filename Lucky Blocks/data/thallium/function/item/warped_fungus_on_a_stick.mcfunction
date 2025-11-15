scoreboard players reset @s thallium.warped_fungus_on_a_stick

function #thallium:item/warped_fungus_on_a_stick

execute if items entity @s weapon.* minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{thallium:{grab_bag:{}}}] run function thallium:item/grab_bag/start