# Iterate on each character of the string
data remove storage c:cv root.temp.separated_item.namespace
data remove storage c:cv root.temp.separated_item.id

# Setup iteration limits
scoreboard players set #iterations_string c.cv.dummy 0

execute store result storage c:cv root.temp.iterations_string int 1 run scoreboard players get #iterations_string c.cv.dummy
execute store result score #max_iterations_string c.cv.dummy run data get storage c:cv root.temp.item.id
execute store result storage c:cv root.temp.string.id.final int 1 run scoreboard players get #max_iterations_string c.cv.dummy
# Fail if theres no limit
execute unless score #max_iterations_string c.cv.dummy matches 1.. run return fail

data modify storage c:cv root.temp.string.mode set value "namespace"
# Iterate
function c.cv:gui/configurer/utils/get_separated_items/iterate_string
