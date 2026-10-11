execute if predicate bittersweet_functions:is_on_ground run tag @s add dashEligible
execute as @a[predicate=bittersweet_functions:is_on_ground] run tag @s remove sneaked
execute as @a[predicate=bittersweet_functions:is_on_ground] run tag @s remove releasedSneak
execute as @a[predicate=bittersweet_functions:is_on_ground] run tag @s remove canDash

execute as @s[tag=dashEligible] unless predicate bittersweet_functions:holding_sneak run tag @s add releasedSneak

execute as @s[tag=releasedSneak] if predicate bittersweet_functions:holding_sneak run tag @s add canDash
execute as @s[tag=releasedSneak] if predicate bittersweet_functions:holding_sneak run tag @s remove releasedSneak

