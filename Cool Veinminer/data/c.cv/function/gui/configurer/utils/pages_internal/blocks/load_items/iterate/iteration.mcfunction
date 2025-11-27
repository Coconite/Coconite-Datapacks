# Save index for future use
scoreboard players set #slot c.cv.dummy 0
scoreboard players operation #slot c.cv.dummy += #real_iterations c.cv.dummy
scoreboard players add #slot c.cv.dummy 1

execute if score #slot c.cv.dummy matches 9.. run scoreboard players add #slot c.cv.dummy 1
execute if score #slot c.cv.dummy matches 8 run scoreboard players add #slot c.cv.dummy 1
execute if score #slot c.cv.dummy matches 18.. run scoreboard players add #slot c.cv.dummy 1
execute if score #slot c.cv.dummy matches 17 run scoreboard players add #slot c.cv.dummy 1
execute if score #slot c.cv.dummy matches 26 run return fail

execute store result storage c:cv root.temp.index int 1 run scoreboard players get #iterations c.cv.dummy
execute store result storage c:cv root.temp.slot int 1 run scoreboard players get #slot c.cv.dummy

function c.cv:gui/configurer/utils/pages_internal/blocks/load_items/iterate/insert_item with storage c:cv root.temp

# Iteration System
$execute if score #iterations c.cv.dummy matches $(max_iterations).. run return run return fail
scoreboard players add #iterations c.cv.dummy 1
scoreboard players add #real_iterations c.cv.dummy 1
function c.cv:gui/configurer/utils/pages_internal/blocks/load_items/iterate/iteration with storage c:cv root.temp
