advancement revoke @s only bittersweet_functions:mob_checks/hurt_by_spider

execute if block ~ ~ ~ minecraft:cobweb run return fail
execute if block ~ ~1 ~ minecraft:cobweb run return fail

execute if predicate bittersweet_functions:chance/chance_20 run fill ~ ~ ~ ~ ~ ~ minecraft:cobweb replace #minecraft:air

execute if predicate bittersweet_functions:chance/chance_20 run fill ~ ~1 ~ ~ ~1 ~ minecraft:cobweb replace #minecraft:air
