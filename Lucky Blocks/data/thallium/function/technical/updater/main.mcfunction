$execute unless items entity @s $(slot) * run return fail

scoreboard players add #temp thallium.dummy 1

$item replace entity @n[tag=thallium.entity.inventory_updater] contents from entity @s $(slot)

scoreboard players set @s thallium.dummy 1

execute as @n[tag=thallium.entity.inventory_updater] run function thallium:technical/updater/as_entity

$item replace entity @s $(slot) from entity @n[tag=thallium.entity.inventory_updater] contents
