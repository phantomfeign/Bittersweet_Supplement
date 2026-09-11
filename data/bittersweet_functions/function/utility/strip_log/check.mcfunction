advancement revoke @s only bittersweet_functions:misc/strip_log
execute if predicate bittersweet_functions:chance/chance_20 run \
summon item ~ ~ ~ {Item:{id:"minecraft:zombie_spawn_egg", count:1, components:{"!minecraft:entity_data":{}}}}