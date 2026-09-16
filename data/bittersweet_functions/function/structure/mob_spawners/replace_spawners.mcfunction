execute if entity @s[gamemode=creative] run return fail
execute if entity @s[gamemode=spectator] run return fail
#regular dungeon
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 \
minecraft:command_block{auto:true,Command:"function bittersweet_functions:structure/mob_spawners/command \
{spawner_type:dungeon_spawner,mob_count:5,spawn_timer:10}"} \
replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:zombie"}}}
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 \
minecraft:command_block{auto:true,Command:"function bittersweet_functions:structure/mob_spawners/command \
{spawner_type:dungeon_spawner,mob_count:5,spawn_timer:10}"} \
replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:skeleton"}}}
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 \
minecraft:command_block{auto:true,Command:"function bittersweet_functions:structure/mob_spawners/command \
{spawner_type:dungeon_spawner,mob_count:5,spawn_timer:10}"} \
replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:spider"}}}

#mineshaft
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 \
minecraft:command_block{auto:true,Command:"function bittersweet_functions:structure/mob_spawners/command \
{spawner_type:mineshaft_spawner,mob_count:6,spawn_timer:18}"} \
replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:cave_spider"}}}

#medium dungeon
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 \
minecraft:command_block{auto:true,Command:"function bittersweet_functions:structure/mob_spawners/command \
{spawner_type:medium_dungeon,mob_count:10,spawn_timer:25}"} \
replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:copper_golem"}}}

#blaze
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 \
minecraft:trial_spawner[ominous=false]{\
normal_config:"bittersweet_functions:blaze_trial",\
ominous_config:"bittersweet_functions:blaze_trial"} \
replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:blaze"}}}