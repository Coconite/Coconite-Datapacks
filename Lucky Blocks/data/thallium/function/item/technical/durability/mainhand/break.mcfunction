data remove storage thallium:temp root
data modify storage thallium:temp root.item set from entity @s SelectedItem

execute at @s run function thallium:item/technical/durability/particle with storage thallium:temp root

playsound minecraft:entity.item.break player @a[distance=..16]

item replace entity @s weapon.mainhand with minecraft:air