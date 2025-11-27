# Get actual lenght
execute store result score #item.lenght c.cv.dummy run data get storage c:cv root.config.separated_items
scoreboard players remove #item.lenght c.cv.dummy 1

execute unless score #item.previous_lenght c.cv.dummy matches 1.. run scoreboard players operation #item.previous_lenght c.cv.dummy = #item.lenght c.cv.dummy

# Setup iteration for remove scores
scoreboard players set #iterations c.cv.dummy 0
data modify storage c:cv root.temp.iterations set value 0
function c.cv:gui/configurer/utils/create_scores/setup_limit

# Start Iteration for remove scores
function c.cv:gui/configurer/utils/create_scores/iteration_remove_scores with storage c:cv root.temp

# Setup iteration for create scores
scoreboard players set #iterations c.cv.dummy 0
data modify storage c:cv root.temp.iterations set value 0
scoreboard players operation #max_iterations c.cv.dummy = #item.lenght c.cv.dummy

# Start Iteration for create scores
function c.cv:gui/configurer/utils/create_scores/iteration_create_scores with storage c:cv root.temp

# Save lenght
scoreboard players operation #item.previous_lenght c.cv.dummy = #item.lenght c.cv.dummy