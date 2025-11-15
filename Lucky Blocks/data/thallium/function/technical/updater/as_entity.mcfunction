execute if data entity @s item.count store result score @s thallium.dummy run data get entity @s item.count
data modify storage thallium:temp item set from entity @s item

function #thallium:updater/main

loot replace entity @s contents loot thallium:updater

function thallium:technical/updater/preserve_components {"component":"\"minecraft:enchantments\""}
function thallium:technical/updater/preserve_components {"component":"\"minecraft:damage\""}
function thallium:technical/updater/preserve_components {"component":"\"minecraft:repair_cost\""}
function thallium:technical/updater/preserve_components {"component":"\"minecraft:custom_name\""}
function thallium:technical/updater/preserve_components {"component":"\"minecraft:bundle_contents\""}
function thallium:technical/updater/preserve_components {"component":"\"minecraft:charged_projectiles\""}

function #thallium:updater/preserve_components