execute if score @s ProjectileLifetime matches 30.. run kill @s
tp @s ^ ^ ^2
particle minecraft:sonic_boom
execute as @e[type=!#bittersweet_functions:nonliving_entity,tag=!sonicBoomOwner,distance=..2] run damage @s 6 minecraft:sonic_boom
scoreboard players add @s ProjectileLifetime 1
