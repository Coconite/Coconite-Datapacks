scoreboard objectives add thallium.dummy dummy

scoreboard players set #con.-1 thallium.dummy -1

scoreboard objectives add thallium.entity dummy
scoreboard objectives add thallium.entity_secondary dummy
scoreboard objectives add thallium.entity_tertiary dummy
scoreboard objectives add thallium.entity.ambient_sound dummy
scoreboard objectives add thallium.entity.step_sound dummy
scoreboard objectives add thallium.hurt_time dummy
scoreboard objectives add thallium.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add thallium.bow minecraft.used:minecraft.bow
scoreboard objectives add thallium.right_click_detection dummy
scoreboard objectives add thallium.health health
scoreboard objectives add thallium.death deathCount
scoreboard objectives add thallium.relog minecraft.custom:minecraft.leave_game

scoreboard objectives add tl.menu trigger
scoreboard objectives add tl.update trigger

team add smithed.prevent_aggression
team modify smithed.prevent_aggression nametagVisibility always
team modify smithed.prevent_aggression friendlyFire false

data remove storage thallium:temp list_encoded

schedule function thallium:technical/list/scheduled 1s

scoreboard players set #thallium.installed thallium.dummy 1