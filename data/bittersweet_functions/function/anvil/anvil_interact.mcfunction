advancement revoke @s only bittersweet_functions:misc/anvil_interact
experience set @s 54 levels
tag @s add UsingAnvil
scoreboard players set @s anvil_interaction 0
stopwatch restart anvil_timer
function bittersweet_functions:anvil/prior_work
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:anvil replace minecraft:chipped_anvil
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:anvil replace minecraft:damaged_anvil
