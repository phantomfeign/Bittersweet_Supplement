execute if score @s ProjectileLifetime matches 30.. run kill @s
tp @s ^ ^ ^2

particle minecraft:sonic_boom

particle sculk_soul ^ ^0.0 ^ ^ ^1000000.0 ^ 0.0000001 0
particle sculk_soul ^0.0 ^0.0 ^ ^499999.9999999999 ^866025.4037844387 ^ 0.0000001 0
particle sculk_soul ^0.0 ^0.0 ^ ^866025.4037844386 ^500000.0000000001 ^ 0.0000001 0
particle sculk_soul ^0.0 ^ ^ ^1000000.0 ^ ^ 0.0000001 0
particle sculk_soul ^0.0 ^-0.0 ^ ^866025.4037844389 ^-499999.9999999998 ^ 0.0000001 0
particle sculk_soul ^0.0 ^-0.0 ^ ^499999.9999999999 ^-866025.4037844387 ^ 0.0000001 0
particle sculk_soul ^ ^-0.0 ^ ^ ^-1000000.0 ^ 0.0000001 0
particle sculk_soul ^-0.0 ^-0.0 ^ ^-500000.0000000001 ^-866025.4037844386 ^ 0.0000001 0
particle sculk_soul ^-0.0 ^-0.0 ^ ^-866025.4037844384 ^-500000.0000000005 ^ 0.0000001 0
particle sculk_soul ^-0.0 ^ ^ ^-1000000.0 ^ ^ 0.0000001 0
particle sculk_soul ^-0.0 ^0.0 ^ ^-866025.4037844386 ^500000.0 ^ 0.0000001 0
particle sculk_soul ^-0.0 ^0.0 ^ ^-500000.0000000005 ^866025.4037844384 ^ 0.0000001 0

execute as @e[type=!#bittersweet_functions:nonliving_entity,tag=!sonicBoomOwner,distance=..2] run damage @s 6 minecraft:sonic_boom
scoreboard players add @s ProjectileLifetime 1

