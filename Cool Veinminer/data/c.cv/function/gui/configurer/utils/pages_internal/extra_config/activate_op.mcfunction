execute as @n[tag=c.cv.gui.configurer] run function c.cv:gui/configurer/set_page/main_page

tellraw @a {"text":"⚠ Warning ⚠","color":"yellow"}
tellraw @a ''
tellraw @a [{"text":"> ","color":"red"},{"text":"In order to use the configuration of ","color":"white"},{"text":"Cool Veinminer","color":"green"},{"text":", you will need OP.","color":"white"}]
tellraw @a ''
tellraw @a [{"text":"> ","color":"red"},{"text":"All ","color":"white"},{"text":"Configurers","color":"yellow"},{"text":" got removed, you can obtain another one from the Pause Menu","color":"white"}]
tellraw @a ''
tellraw @a {"text":"⚠ Warning ⚠","color":"yellow"}

clear @a *[minecraft:custom_data~{c:{cool_veinminer:{id:"configurer"}}}]
data modify storage c:cv root.config.op_needed set value 1b
