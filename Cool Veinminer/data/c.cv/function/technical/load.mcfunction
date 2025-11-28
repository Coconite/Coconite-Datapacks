team add c.cv.no_collision
team modify c.cv.no_collision collisionRule never

scoreboard objectives add c.cv.dummy dummy

scoreboard players set #25 c.cv.dummy 25
scoreboard players set #22 c.cv.dummy 22
scoreboard players set #23 c.cv.dummy 23

scoreboard objectives add c.cv.configurer.trigger trigger

gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647

data modify storage c:cv root.config.items_default set value [{id:"minecraft:wooden_pickaxe",count:1},{id:"minecraft:stone_pickaxe",count:1},{id:"minecraft:copper_pickaxe",count:1},{id:"minecraft:iron_pickaxe",count:1},{id:"minecraft:golden_pickaxe",count:1},{id:"minecraft:diamond_pickaxe",count:1},{id:"minecraft:netherite_pickaxe",count:1}]
data modify storage c:cv root.config.blocks_default set value [{id:"minecraft:black_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:coal_ore",count:1},{id:"minecraft:deepslate_coal_ore",count:1}]}},{id:"minecraft:orange_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:copper_ore",count:1},{id:"minecraft:deepslate_copper_ore",count:1}]}},{id:"minecraft:white_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:iron_ore",count:1},{id:"minecraft:deepslate_iron_ore",count:1}]}},{id:"minecraft:blue_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:lapis_ore",count:1},{id:"minecraft:deepslate_lapis_ore",count:1}]}},{id:"minecraft:lime_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:emerald_ore",count:1},{id:"minecraft:deepslate_emerald_ore",count:1}]}},{id:"minecraft:yellow_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:gold_ore",count:1},{id:"minecraft:deepslate_gold_ore",count:1}]}},{id:"minecraft:light_blue_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:diamond_ore",count:1},{id:"minecraft:deepslate_diamond_ore",count:1}]}},{id:"minecraft:red_bundle",count:1,components:{"minecraft:bundle_contents":[{id:"minecraft:redstone_ore",count:1},{id:"minecraft:deepslate_redstone_ore",count:1}]}},{id:"minecraft:nether_gold_ore",count:1},{id:"minecraft:nether_quartz_ore",count:1}]

data modify storage c:cv root.config.sneak_needed_default set value 1b
data modify storage c:cv root.config.op_needed_default set value 0b

data modify storage c:cv root.config.max_lenght_default set value 64

execute unless data storage c:cv root.version{major:1,minor:0,subversion:0} run function c.cv:technical/first_load
