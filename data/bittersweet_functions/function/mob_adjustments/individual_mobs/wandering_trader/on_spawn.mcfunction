tellraw @a "The wandering trader has arrived."
effect clear @s
effect give @s glowing infinite 0 true
effect give @s water_breathing infinite 0 true
effect give @s resistance infinite 255 true
effect give @s fire_resistance infinite 255 true
attribute @s minecraft:knockback_resistance modifier add bswt:wandering_trader 1.0 add_value
data merge entity @s {Silent:true}