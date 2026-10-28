tag @s add bswt.spawnChecked
execute as @s[tag=bswt.ignoreMobCheck] run return run tag @s add bswt.spawnChecked
#behavior of copies
execute if entity @s[tag=bswt.extraSpawn] at @s run spreadplayers ~ ~ 2 4 false @s

#ban
execute at @s run execute if dimension minecraft:overworld run execute if entity @s[type=#bittersweet_functions:cant_spawn_surface] \
if predicate bittersweet_functions:surface_spawn run tag @s add bswt.spawnForbidden
execute at @s run execute if dimension minecraft:overworld run execute if entity @s[type=#bittersweet_functions:cant_spawn_seeing_sky] \
if predicate bittersweet_functions:can_see_sky run tag @s add bswt.spawnForbidden

#death to the babies
execute as @s[type=#minecraft:zombies,nbt={IsBaby:1b}] run data merge entity @s {IsBaby:0b}

#less creepers on surface
execute if entity @s[type=minecraft:creeper] if predicate bittersweet_functions:surface_spawn unless predicate bittersweet_functions:chance/chance_10 run tag @s add bswt.spawnForbidden

#deepslate spiders
execute as @s[type=minecraft:spider,tag=!dungeon_spawn] if predicate bittersweet_functions:above_deepslate run tag @s add bswt.spawnForbidden

#bye villagers FOR NOW. maybe.
execute as @s[type=minecraft:villager] run tag @s add bswt.spawnForbidden

#deletion
execute as @s[tag=bswt.spawnForbidden] run return run function bittersweet_functions:mob_adjustments/delete

function bittersweet_functions:mob_adjustments/mob_changes

#make a copy
execute if entity @s[tag=!bswt.spawnForbidden,tag=!bswt.extraSpawn] if score #sleep SleepStreak matches 2 if predicate bittersweet_functions:chance/chance_10 \
run function bittersweet_functions:mob_adjustments/copy_self
execute if entity @s[tag=!bswt.spawnForbidden,tag=!bswt.extraSpawn] if score #sleep SleepStreak matches 3 if predicate bittersweet_functions:chance/chance_20 \
run function bittersweet_functions:mob_adjustments/copy_self
execute if entity @s[tag=!bswt.spawnForbidden,tag=!bswt.extraSpawn] if score #sleep SleepStreak matches 4 if predicate bittersweet_functions:chance/chance_40 \
run function bittersweet_functions:mob_adjustments/copy_self

execute if entity @s[tag=!bswt.spawnForbidden,tag=!bswt.extraSpawn] if score #sleep SleepStreak matches 5.. run function bittersweet_functions:mob_adjustments/copy_self
