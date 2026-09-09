execute as @s[tag=!died_recently] if score @s Deaths matches 1.. run tag @s add died_recently
execute as @s[tag=died_recently] run effect give @s minecraft:darkness 3 0 true
execute as @s[tag=died_recently] run effect give @s minecraft:blindness 3 0 true
execute as @s[tag=died_recently] run effect give @s minecraft:nausea 3 0 true
execute as @s[tag=died_recently] run effect give @s minecraft:slowness 3 0 true
execute as @s[tag=died_recently] run effect give @s minecraft:weakness 10 0 true
execute as @s[tag=died_recently] run function bittersweet_functions:misc/health/decrease_hp
