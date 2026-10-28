execute unless score @s cooldownStormShell matches 10.. run return fail
execute if predicate bittersweet_functions:weather/raining if predicate bittersweet_functions:weather/thundering \
run tellraw @s {"text":"It is beyond my means, my child.","color":"gray","italic":true}
execute if predicate bittersweet_functions:weather/raining if predicate bittersweet_functions:weather/thundering \
run return run scoreboard players set @s cooldownStormShell 9


scoreboard players set @s cooldownStormShell 0
scoreboard players set @s cooldownStormShellSeconds 0

$execute if predicate bittersweet_functions:weather/raining run return \
run function bittersweet_functions:misc/storm_shell/charge {slot:$(slot)}

$execute unless predicate bittersweet_functions:weather/raining \
run function bittersweet_functions:misc/storm_shell/consume {slot:$(slot)}
