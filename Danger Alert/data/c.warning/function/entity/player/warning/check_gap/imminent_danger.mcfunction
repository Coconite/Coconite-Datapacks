title @s times 10 60 10
title @s title {"text":"!","font":"c.warning:sprites","shadow_color":0}
title @s subtitle {"text":"THERE IS A DANGER BENEATH YOU!","font":"c.warning:tooltip","shadow_color":0}

playsound minecraft:block.note_block.guitar master @s[tag=!c.warning.warned] ~ ~ ~ 1 0

tag @s add c.warning.warned
