$execute unless predicate thallium:entity_properties/inventory_full run loot give @s loot $(loot_table)
$execute if predicate thallium:entity_properties/inventory_full run loot spawn ~ ~0.5 ~ loot $(loot_table)
$playsound $(open_sound) player @a[distance=..8] ~ ~ ~ 0.5
$function $(function)