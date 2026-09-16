execute at @s[type=marker,tag=spawner_marker,tag=dungeon_spawner] run function bittersweet_functions:structure/mob_spawners/marker/spawns/dungeon/make_rolls
execute at @s[type=marker,tag=spawner_marker,tag=mineshaft_spawner] run function bittersweet_functions:structure/mob_spawners/marker/spawns/mineshaft/make_rolls
execute at @s[type=marker,tag=spawner_marker,tag=medium_dungeon] run function bittersweet_functions:structure/mob_spawners/marker/spawns/medium_dungeon/make_rolls

function bittersweet_functions:structure/mob_spawners/marker/fx/spawn
scoreboard players set @s SpawnerTimer 10
scoreboard players remove @s SpawnerMobCount 1
execute if score @s SpawnerMobCount matches ..0 run function bittersweet_functions:structure/mob_spawners/marker/kill