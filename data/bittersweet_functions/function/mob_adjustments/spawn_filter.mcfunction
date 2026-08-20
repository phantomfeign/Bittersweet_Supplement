#behavior of copies
execute if entity @s[tag=ExtraSpawn] at @s run spreadplayers ~ ~ 2 4 false @s

execute if dimension minecraft:overworld if entity @s[type=minecraft:phantom] unless predicate bittersweet_functions:weather/thundering run tag @s add SpawnForbidden

#checks if a mob spawn is exposed to the sky
execute at @s run execute if dimension minecraft:overworld run execute unless entity @s[type=#minecraft:undead] if predicate bittersweet_functions:can_see_sky run tag @s add SpawnForbidden

#death to the babies
execute as @s[type=#minecraft:zombies,nbt={IsBaby:1b}] run tag @s add SpawnForbidden

#kill with no loot
execute as @s[tag=SpawnForbidden] run data modify entity @s DeathLootTable set value "bittersweet_functions:empty"
execute as @s[tag=SpawnForbidden] run data merge entity @s {NoAI:1b,Silent:1b}
execute as @s[tag=SpawnForbidden] run tp @s ~ -1000 ~
execute as @s[tag=SpawnForbidden] run kill @s

#if spawn success, apply changes
execute as @s if entity @s[tag=!SpawnForbidden] run function bittersweet_functions:mob_adjustments/mob_changes

#make a copy
execute if entity @s[tag=!SpawnForbidden,tag=!ExtraSpawn] if score #sleep SleepStreak matches 2 if predicate bittersweet_functions:spawn/chance_10 run function bittersweet_functions:mob_adjustments/copy_self
execute if entity @s[tag=!SpawnForbidden,tag=!ExtraSpawn] if score #sleep SleepStreak matches 3 if predicate bittersweet_functions:spawn/chance_20 run function bittersweet_functions:mob_adjustments/copy_self
execute if entity @s[tag=!SpawnForbidden,tag=!ExtraSpawn] if score #sleep SleepStreak matches 4 if predicate bittersweet_functions:spawn/chance_40 run function bittersweet_functions:mob_adjustments/copy_self
execute if entity @s[tag=!SpawnForbidden,tag=!ExtraSpawn] if score #sleep SleepStreak matches 5.. run function bittersweet_functions:mob_adjustments/copy_self

tag @s add SpawnChecked