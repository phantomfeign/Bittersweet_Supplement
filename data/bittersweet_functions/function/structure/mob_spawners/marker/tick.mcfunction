execute unless block ~ ~ ~ minecraft:spawner run function bittersweet_functions:structure/mob_spawners/marker/kill
execute unless entity @a[distance=..8] run return fail
scoreboard players remove @s[type=minecraft:marker,tag=spawner_marker] SpawnerTimer 1
function bittersweet_functions:structure/mob_spawners/marker/fx/tick
execute as @s[type=minecraft:marker,tag=spawner_marker,scores={SpawnerTimer=0}] run function bittersweet_functions:structure/mob_spawners/marker/sort