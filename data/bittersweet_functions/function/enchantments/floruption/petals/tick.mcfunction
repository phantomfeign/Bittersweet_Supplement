particle minecraft:tinted_leaves{color:[0.604, 0.702, 0.259, 1.0]} ~ ~ ~ 0 0 0 0 1

execute unless score @s VerdumPetalTimer matches ..0 run return run function bittersweet_functions:enchantments/floruption/petals/tick_wander

data modify entity @s {} merge value \
{interpolation_duration:1,start_interpolation:0,transformation:{left_rotation:[0f,0.924f,0f,0.383f]}}

execute unless entity @e[type=!#bittersweet_functions:nonliving_entity,type=!#bittersweet_functions:is_passive,\
tag=!bswt.floruptionCaster,distance=..15] run return run kill @s

execute facing entity @e[type=!#bittersweet_functions:nonliving_entity,type=!#bittersweet_functions:is_passive,\
tag=!bswt.floruptionCaster,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.5

execute if entity @e[type=!#bittersweet_functions:nonliving_entity,type=!#bittersweet_functions:is_passive,\
tag=!bswt.floruptionCaster,distance=..2] at @e[limit=1,sort=nearest] positioned ~ ~1 ~ run function bittersweet_functions:enchantments/floruption/petals/detonate
