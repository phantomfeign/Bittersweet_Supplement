execute unless predicate bittersweet_functions:climbing/input if entity @s[x_rotation=80..90] if block ~ ~-0.3 ~ #minecraft:climbable run tp @s ~ ~-0.25 ~
execute unless predicate bittersweet_functions:climbing/input if entity @s[x_rotation=80..90] run data modify entity @s fall_distance set value 0.0f

execute if predicate bittersweet_functions:climbing/input \
if predicate bittersweet_functions:climbing/blocks \
if entity @s[x_rotation=-90..-30] if block ~ ~1.2 ~ #minecraft:climbable \
run return run effect give @s levitation 1 15 true

effect clear @s levitation