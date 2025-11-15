execute positioned ^ ^ ^-2 positioned over motion_blocking run summon mannequin ~ ~ ~ {Invulnerable:1b,Tags:["thallium.tick","c.lb.herobrine"],CustomNameVisible:1b,hide_description:true,CustomName:"Herobrine",profile:{texture:"c.lb:entity/herobrine"}}
tellraw @a {"text":"Herobrine joined the game","color":"yellow"}

execute positioned ^ ^ ^-2 positioned over motion_blocking run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1 0

schedule function c.lb:block/lucky_block/effects/trap/herobrine_dissapear 10s append
