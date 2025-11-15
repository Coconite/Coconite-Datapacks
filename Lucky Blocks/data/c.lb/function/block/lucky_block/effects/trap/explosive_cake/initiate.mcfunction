data merge entity @s {Tags:["c.lb.explosive_cake","thallium.tick"],block_state:{Name:"minecraft:cake"},fuse:60}

data remove entity @s Motion

# Motion
execute store result score #c.lb.effect.x0 c.lb.dummy run data get entity @s Pos[0] 50
execute store result score #c.lb.effect.y0 c.lb.dummy run data get entity @s Pos[1] 50
execute store result score #c.lb.effect.z0 c.lb.dummy run data get entity @s Pos[2] 50

execute facing entity @p feet run summon marker ^ ^ ^.1 {Tags:["c.lb.motion_calculator"]}

execute store result score #c.lb.effect.x1 c.lb.dummy run data get entity @n[tag=c.lb.motion_calculator] Pos[0] 50
execute store result score #c.lb.effect.y1 c.lb.dummy run data get entity @n[tag=c.lb.motion_calculator] Pos[1] 50
execute store result score #c.lb.effect.z1 c.lb.dummy run data get entity @n[tag=c.lb.motion_calculator] Pos[2] 50

execute store result entity @s Motion[0] double 0.1 run scoreboard players operation #c.lb.effect.x1 c.lb.dummy -= #c.lb.effect.x0 c.lb.dummy
execute store result entity @s Motion[1] double 0.1 run scoreboard players operation #c.lb.effect.y1 c.lb.dummy -= #c.lb.effect.y0 c.lb.dummy
execute store result entity @s Motion[2] double 0.1 run scoreboard players operation #c.lb.effect.z1 c.lb.dummy -= #c.lb.effect.z0 c.lb.dummy

kill @n[tag=c.lb.motion_calculator]
