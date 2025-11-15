data modify entity @s DespawnDelay set value 100000
execute unless entity @s[tag=thallium.entity.has_trades] run data remove entity @s Offers.Recipes

data modify entity @s equipment.mainhand.components."minecraft:custom_data".thallium.fix set value "Thanks r/MinecraftCommands"