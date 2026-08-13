execute at @s run execute if dimension minecraft:overworld run execute if entity @s[type=minecraft:creeper] if predicate bittersweet_functions:surface_spawn run tag @s add SpawnForbidden
execute at @s run execute if dimension minecraft:overworld run execute if entity @s[type=minecraft:phantom] if predicate bittersweet_functions:surface_spawn run tag @s add SpawnForbidden
execute at @s run execute if dimension minecraft:overworld run execute if entity @s[type=minecraft:slime] if predicate bittersweet_functions:surface_spawn run tag @s add SlimeForbidden

# checks if a mob spawn is exposed to the sky. this stops everything except zombies and skeletons (and their variants) from spawning
execute at @s run execute if dimension minecraft:overworld run execute unless entity @s[type=#minecraft:undead] if predicate bittersweet_functions:can_see_sky run tag @s add SpawnForbidden
#death to the babies
execute as @s[type=#minecraft:zombies,nbt={IsBaby:1b}] run tag @s add SpawnForbidden
#slimes get banished instead of killing
execute if entity @s[tag=SlimeForbidden] run tp @s ~ ~-10000 ~
#kill with no loot
execute as @s[tag=SpawnForbidden] run data modify entity @s DeathLootTable set value "bittersweet_functions:empty"
execute as @s[tag=SpawnForbidden] run kill @s 
#if spawn, apply changes
execute as @s run execute if entity @s[tag=!SpawnForbidden] run function bittersweet_functions:mob_adjustments/mob_changes
tag @s add SpawnChecked