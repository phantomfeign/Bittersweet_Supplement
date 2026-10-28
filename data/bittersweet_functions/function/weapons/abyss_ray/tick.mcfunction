scoreboard players add @s ProjectileLifetime 1
execute if score @s ProjectileLifetime matches 20.. run kill @s
tp @s ^ ^ ^1
execute if block ~ ~ ~ #bittersweet_functions:nonsolid run particle minecraft:dust_color_transition{scale:2,from_color:14173644,to_color:16434683} ~ ~ ~ 0 0 0 0.2 1
execute unless block ~ ~ ~ #bittersweet_functions:nonsolid run return run function bittersweet_functions:weapons/abyss_ray/explode
execute if entity @e[sort=nearest,limit=1,distance=..1,type=!#bittersweet_functions:nonliving_entity] run tp @s @e[sort=nearest,limit=1,distance=..1,type=!#bittersweet_functions:nonliving_entity]
execute if entity @e[sort=nearest,limit=1,distance=..1,type=!#bittersweet_functions:nonliving_entity] run return run function bittersweet_functions:weapons/abyss_ray/explode