
#$tp @a $(x) $(y) $(z)

$execute positioned $(x) $(y) $(z) as @p[tag=c.cv.entity.player.miner] run function c.cv:technical/veinminer/multiminer/start
tag @a remove c.cv.entity.player.miner
