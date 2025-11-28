# Input: Add tag "checkID" to your entities to check
# Output: The entities to check if has the same ID will have now the tag "hasID"
scoreboard players operation #searchID globalID = @s globalID
execute as @e[tag=checkID] if score @s globalID = #searchID globalID run tag @s add hasID
tag @e[tag=checkID] remove checkID
