advancement revoke @s only bittersweet_functions:misc/anvil_interact
advancement revoke @s only bittersweet_functions:misc/anvil_use
tag @s add UsingAnvil
experience set @s 54 levels
scoreboard players set @s anvil_interaction 0
stopwatch restart anvil_timer
function bittersweet_functions:anvil/prior_work
