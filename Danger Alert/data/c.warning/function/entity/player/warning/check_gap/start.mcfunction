execute if block ~ ~ ~ #thallium:opaque run return fail

scoreboard players set #iteration c.warning.dummy 0
scoreboard players set #max_iterations c.warning.dummy 256
function c.warning:entity/player/warning/check_gap/iterate
