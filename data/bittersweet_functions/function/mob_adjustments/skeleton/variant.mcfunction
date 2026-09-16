tag @s add SpawnForbidden
execute if predicate bittersweet_functions:chance/chance_1/3 at @s run return run summon minecraft:stray
execute if predicate bittersweet_functions:chance/chance_50 at @s run return run summon minecraft:parched
summon minecraft:bogged
