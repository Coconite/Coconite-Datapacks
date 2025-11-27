# Destroy block
$execute if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/destroy_block

# Add limit
scoreboard players add #veinminer.sub_iteration c.cv.dummy 1
$execute if score #veinminer.sub_iteration c.cv.dummy matches $(max_lenght).. run return fail

# Iterate on vein
$execute positioned ~1 ~ ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~-1 ~ ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~ ~1 ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~ ~-1 ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~ ~ ~1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~ ~ ~-1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp

$execute positioned ~1 ~1 ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~1 ~-1 ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~1 ~ ~1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~1 ~ ~-1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp

$execute positioned ~-1 ~1 ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~-1 ~-1 ~ if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~-1 ~ ~1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~-1 ~ ~-1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp

$execute positioned ~ ~1 ~1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~ ~1 ~-1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp

$execute positioned ~ ~-1 ~1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp
$execute positioned ~ ~-1 ~-1 if block ~ ~ ~ $(block) run function c.cv:technical/veinminer/singleminer/vein/iterate with storage c:cv root.temp