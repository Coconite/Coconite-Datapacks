
# Get item from array into local variable for easier use
$data modify storage c:cv root.temp.item set from storage c:cv root.config.items[$(iterations)]

# Setup string iteration
function c.cv:gui/configurer/utils/get_separated_items/setup/iterate_string

# Create package
function c.cv:gui/configurer/utils/get_separated_items/get_namespace with storage c:cv root.temp.string.namespace
function c.cv:gui/configurer/utils/get_separated_items/get_id with storage c:cv root.temp.string.id

data modify storage c:cv root.temp.separated_item.namespace set from storage c:cv root.temp.string.namespace.string
data modify storage c:cv root.temp.separated_item.id set from storage c:cv root.temp.string.id.string

# Append package
data modify storage c:cv root.config.separated_items append from storage c:cv root.temp.separated_item

# Iterate until i >= max_iterations
execute if score #iterations c.cv.dummy > #max_iterations c.cv.dummy run return fail
scoreboard players add #iterations c.cv.dummy 1
execute store result storage c:cv root.temp.iterations int 1 run scoreboard players get #iterations c.cv.dummy

function c.cv:gui/configurer/utils/get_separated_items/iterate_items with storage c:cv root.temp
