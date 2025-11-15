# This was all done by Flux, I had nothing to do with this. I'll change it to use execute summon later.

scoreboard players reset @s tl.update
scoreboard players enable @s tl.update

tellraw @s {translate:"ui.thallium.updater.start",color:"gray",font:"thallium:5",with:[[{text:"0 ",color:"white",font:"thallium:icon"}]]}
scoreboard players set #temp thallium.dummy 0

summon minecraft:item_display ~ ~ ~ {Tags:["smithed.entity","thallium.entity","thallium.entity.inventory_updater"]}
function thallium:technical/updater/list
kill @n[tag=thallium.entity.inventory_updater]

tellraw @s {translate:"ui.thallium.updater.end",color:"gray",font:"thallium:5",with:[[{text:"0 ",color:"white",font:"thallium:icon",}],{score:{name:"#temp",objective:"thallium.dummy"},color:"#c6d5ec"}]}
