# Get vertical velocity ×1000
execute store result score @s PhantomYVelocity run data get entity @s Motion[1] 1000

# Only check ground clearance while descending
execute if entity @p[distance=..15] if block ~ ~-1 ~ minecraft:air run data modify entity @s Motion[1] set value -1.5d
execute if entity @p[distance=..8] facing entity @p eyes run rotate @s 0 ~
execute if score @s PhantomYVelocity matches ..-1 run function bittersweet_functions:mob_adjustments/phantom/attack/check_ground