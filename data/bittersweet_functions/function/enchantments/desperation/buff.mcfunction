attribute @s minecraft:attack_speed modifier remove bswt:desperation
execute as @s[scores={PlayerHealth=11..}] run return fail 
execute if score @s PlayerHealth matches 9..10 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.2 add_value
execute if score @s PlayerHealth matches 7..8 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.4 add_value
execute if score @s PlayerHealth matches 5..6 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.6 add_value
execute if score @s PlayerHealth matches 3..4 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.8 add_value
execute if score @s PlayerHealth matches 1..2 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 1 add_value
