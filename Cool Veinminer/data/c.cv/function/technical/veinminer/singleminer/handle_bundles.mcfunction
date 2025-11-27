# Catch bundle (Why mojang :sob:)
data modify storage c:cv root.temp.max_lenght set from storage c:cv root.config.max_lenght

execute \
unless data storage c:cv root.temp{block:"minecraft:bundle"} \
unless data storage c:cv root.temp{block:"minecraft:white_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:light_gray_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:gray_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:black_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:brown_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:red_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:orange_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:yellow_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:lime_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:green_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:cyan_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:light_blue_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:blue_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:purple_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:magenta_bundle"} \
unless data storage c:cv root.temp{block:"minecraft:pink_bundle"} \
run return run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp

function c.cv:technical/veinminer/singleminer/call_multiminer/start