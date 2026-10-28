execute if entity @e[type=minecraft:creeper,distance=..10] run return run function bittersweet_functions:mob_adjustments/delete
data modify entity @s ExplosionRadius set value 0b
data modify entity @s Fuse set value 30
effect give @s minecraft:luck infinite 99 true
