# Index get
scoreboard players operation #string.index_final c.cv.dummy = #iterations_string c.cv.dummy
scoreboard players add #string.index_final c.cv.dummy 1

execute store result storage c:cv root.temp.string.start int 1 run scoreboard players get #iterations_string c.cv.dummy
execute store result storage c:cv root.temp.string.final int 1 run scoreboard players get #string.index_final c.cv.dummy

# # Get Letter with indexes
function c.cv:gui/configurer/utils/get_separated_items/get_letter with storage c:cv root.temp.string
# # Process letter
execute if data storage c:cv root.temp.string{letter:":"} run function c.cv:gui/configurer/utils/get_separated_items/save_namespace_indexes

# Iterate until i >= max_iterations_string_string
scoreboard players add #iterations_string c.cv.dummy 1
execute if score #iterations_string c.cv.dummy >= #max_iterations_string c.cv.dummy run return fail
execute store result storage c:cv root.temp.iterations_string int 1 run scoreboard players get #iterations_string c.cv.dummy

function c.cv:gui/configurer/utils/get_separated_items/iterate_string
