playsound minecraft:entity.firework_rocket.launch master @a
summon firework_rocket ~ ~3 ~ {LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:true,colors:[I;16763904],fade_colors:[I;16748800]}]}}}}
execute positioned ~ ~1 ~ summon tnt run function c.lb:block/lucky_block/effects/trap/explosive_cake/initiate
