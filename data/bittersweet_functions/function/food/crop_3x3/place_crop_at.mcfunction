$execute store result score @s SeedCount run clear @s $(seed) 0
execute if score @s SeedCount = #0 SeedCount run return fail
$execute if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ air run clear @s $(seed) 1
$execute if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ air run setblock ~1 ~1 ~ $(crop)

$execute store result score @s SeedCount run clear @s $(seed) 0
execute if score @s SeedCount = #0 SeedCount run return fail
$execute if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ air run clear @s $(seed) 1
$execute if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ $(crop)

$execute store result score @s SeedCount run clear @s $(seed) 0
execute if score @s SeedCount = #0 SeedCount run return fail
$execute if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ air run clear @s $(seed) 1
$execute if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ air run setblock ~-1 ~1 ~ $(crop)
