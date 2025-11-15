execute store result score #c.lb.effect_potion c.lb.dummy run random value 0..15
execute store result storage c:lucky_blocks root.temp.potion.duration int 1 run random value 60..100
execute store result storage c:lucky_blocks root.temp.potion.amplifier int 1 run random value 0..4

execute if score #c.lb.effect_potion c.lb.dummy matches 0 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:absorption"
execute if score #c.lb.effect_potion c.lb.dummy matches 1 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:blindness"
execute if score #c.lb.effect_potion c.lb.dummy matches 2 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:darkness"
execute if score #c.lb.effect_potion c.lb.dummy matches 3 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:fire_resistance"
execute if score #c.lb.effect_potion c.lb.dummy matches 4 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:weakness"
execute if score #c.lb.effect_potion c.lb.dummy matches 5 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:levitation"
execute if score #c.lb.effect_potion c.lb.dummy matches 6 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:glowing"
execute if score #c.lb.effect_potion c.lb.dummy matches 7 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:poison"
execute if score #c.lb.effect_potion c.lb.dummy matches 8 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:jump_boost"
execute if score #c.lb.effect_potion c.lb.dummy matches 9 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:speed"
execute if score #c.lb.effect_potion c.lb.dummy matches 10 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:slowness"
execute if score #c.lb.effect_potion c.lb.dummy matches 11 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:haste"
execute if score #c.lb.effect_potion c.lb.dummy matches 12 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:mining_fatigue"
execute if score #c.lb.effect_potion c.lb.dummy matches 13 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:strength"
execute if score #c.lb.effect_potion c.lb.dummy matches 14 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:resistance"
execute if score #c.lb.effect_potion c.lb.dummy matches 15 run data modify storage c:lucky_blocks root.temp.potion.effect set value "minecraft:bad_omen"

particle minecraft:instant_effect ~ ~ ~ 0.5 0.5 0.5 1 200
playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1
playsound minecraft:block.trial_spawner.about_to_spawn_item master @a ~ ~ ~

function c.lb:block/lucky_block/effects/potion/apply with storage c:lucky_blocks root.temp.potion
