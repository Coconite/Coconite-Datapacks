data modify storage c:cv root.temp.string.mode set value "id"
scoreboard players operation #save_index c.cv.dummy = #iterations_string c.cv.dummy

execute store result storage c:cv root.temp.string.namespace.final int 1 run scoreboard players get #save_index c.cv.dummy
scoreboard players add #save_index c.cv.dummy 1
execute store result storage c:cv root.temp.string.id.start int 1 run scoreboard players get #save_index c.cv.dummy
