execute unless block ~ ~ ~ minecraft:spawner run function bittersweet_functions:structure/mob_spawners/marker/kill
execute if predicate bittersweet_functions:chance/chance_30 run playsound minecraft:block.trial_spawner.ambient ambient @a ~ ~ ~ 15 2
execute if entity @a[distance=..9] run scoreboard players remove @s[type=minecraft:marker,tag=spawner_marker] SpawnerTimer 1
execute unless entity @a[distance=..4] run return fail
function bittersweet_functions:structure/mob_spawners/marker/fx/tick
execute as @s[type=minecraft:marker,tag=spawner_marker] if score @s SpawnerTimer matches ..0 run function bittersweet_functions:structure/mob_spawners/marker/sort