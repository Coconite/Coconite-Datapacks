execute store result score #c.lb.effect_ c.lb.dummy run random value 0..20

execute if score #c.lb.effect_ c.lb.dummy matches 0 run return run summon minecraft:allay
execute if score #c.lb.effect_ c.lb.dummy matches 1 run return run summon minecraft:creeper
execute if score #c.lb.effect_ c.lb.dummy matches 2 run return run summon minecraft:creaking
execute if score #c.lb.effect_ c.lb.dummy matches 3 run return run summon minecraft:warden ~ ~ ~ {attributes:[{id:"scale",base:0.2},{"base":20,id:"max_health"}],PersistenceRequired:1b}
execute if score #c.lb.effect_ c.lb.dummy matches 4 run return run summon minecraft:villager
execute if score #c.lb.effect_ c.lb.dummy matches 5 run return run summon minecraft:wither_skeleton
execute if score #c.lb.effect_ c.lb.dummy matches 6 run return run summon minecraft:armor_stand
execute if score #c.lb.effect_ c.lb.dummy matches 7 run return run summon minecraft:bamboo_raft
execute if score #c.lb.effect_ c.lb.dummy matches 8 run return run summon minecraft:axolotl
execute if score #c.lb.effect_ c.lb.dummy matches 9 run return run summon minecraft:evoker
execute if score #c.lb.effect_ c.lb.dummy matches 10 run return run summon minecraft:ravager
execute if score #c.lb.effect_ c.lb.dummy matches 11 run return run summon minecraft:vindicator
execute if score #c.lb.effect_ c.lb.dummy matches 12 run return run summon minecraft:bee
execute if score #c.lb.effect_ c.lb.dummy matches 13 run return run summon minecraft:armadillo
execute if score #c.lb.effect_ c.lb.dummy matches 14 run return run summon minecraft:drowned
execute if score #c.lb.effect_ c.lb.dummy matches 15 run return run summon minecraft:ghast
execute if score #c.lb.effect_ c.lb.dummy matches 16 run return run summon minecraft:zombie ~ ~ ~ {attributes:[{"id":"scale",base:10}]}
execute if score #c.lb.effect_ c.lb.dummy matches 17 run return run summon minecraft:magma_cube ~ ~ ~ {Size:4}
execute if score #c.lb.effect_ c.lb.dummy matches 18 run return run summon minecraft:husk
execute if score #c.lb.effect_ c.lb.dummy matches 19 run return run summon minecraft:bat
execute if score #c.lb.effect_ c.lb.dummy matches 20 run return run summon minecraft:illusioner
