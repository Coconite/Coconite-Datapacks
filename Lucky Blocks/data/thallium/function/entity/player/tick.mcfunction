function #thallium:entity/player/tick

execute if score @s thallium.warped_fungus_on_a_stick matches 1.. run function thallium:item/warped_fungus_on_a_stick

execute if score @s thallium.bow matches 1.. run function thallium:entity/arrow/shoot

execute if predicate thallium:entity_scores/menu run function thallium:technical/list/open
scoreboard players enable @s[tag=!thallium.menu_locked] tl.menu

execute if predicate thallium:entity_scores/update run function thallium:technical/updater/start

execute if score @s thallium.death matches 1.. run return run function thallium:entity/player/death
execute if score @s[tag=thallium.entity.player.currently_dead] thallium.health matches 1.. run function thallium:entity/player/respawn