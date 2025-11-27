# Items
execute store result score #array_size c.cv.dummy run data get storage c:cv root.config.items
scoreboard players remove #array_size c.cv.dummy 1
execute store result storage c:cv root.temp.value int 1 run scoreboard players get #array_size c.cv.dummy

function c.cv:gui/configurer/utils/random_value with storage c:cv root.temp
execute store result storage c:cv root.temp.index int 1 run scoreboard players get #random c.cv.dummy
function c.cv:gui/configurer/utils/pages_internal/main/set_item_0 with storage c:cv root.temp

# Blocks
execute store result score #array_size c.cv.dummy run data get storage c:cv root.config.blocks
scoreboard players remove #array_size c.cv.dummy 1
execute store result storage c:cv root.temp.value int 1 run scoreboard players get #array_size c.cv.dummy

function c.cv:gui/configurer/utils/random_value with storage c:cv root.temp
execute store result storage c:cv root.temp.index int 1 run scoreboard players get #random c.cv.dummy
function c.cv:gui/configurer/utils/pages_internal/main/set_item_1 with storage c:cv root.temp
