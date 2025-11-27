data modify storage c:cv root.config.items set from storage c:cv root.config.items_default
data modify storage c:cv root.config.blocks set from storage c:cv root.config.blocks_default
data modify storage c:cv root.config.max_lenght set from storage c:cv root.config.max_lenght_default
data modify storage c:cv root.config.sneak_needed set from storage c:cv root.config.sneak_needed_default
data modify storage c:cv root.config.op_needed set from storage c:cv root.config.op_needed_default

data modify storage c:cv root.version.major set value 1 
data modify storage c:cv root.version.minor set value 0
data modify storage c:cv root.version.subversion set value 0

# Get Separated Items
function c.cv:gui/configurer/utils/get_separated_items/start
function c.cv:gui/configurer/utils/create_scores/start
