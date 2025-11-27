# Reset separated_items to empty
data remove storage c:cv root.config.separated_items

# Setup iteration
scoreboard players set #iterations c.cv.dummy 0
execute store result storage c:cv root.temp.iterations int 1 run scoreboard players get #iterations c.cv.dummy
execute store result score #max_iterations c.cv.dummy run data get storage c:cv root.config.items
scoreboard players remove #max_iterations c.cv.dummy 2
# Iterate
function c.cv:gui/configurer/utils/get_separated_items/iterate_items with storage c:cv root.temp
