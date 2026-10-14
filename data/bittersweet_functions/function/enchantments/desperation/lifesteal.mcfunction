execute as @s[scores={PlayerHealth=11..}] if predicate bittersweet_functions:chance/chance_25 run return run effect give @s minecraft:regeneration 2 1 true
execute as @s[scores={PlayerHealth=5..10}] if predicate bittersweet_functions:chance/chance_50 run return run effect give @s minecraft:regeneration 2 1 true
execute as @s[scores={PlayerHealth=..5}] run return run effect give @s minecraft:regeneration 2 1 true
