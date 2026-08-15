effect clear @a[distance=..6] minecraft:luck

#poison
effect give @a[distance=..1] minecraft:poison 10 4
effect give @a[distance=1.1..2] minecraft:poison 9 4
effect give @a[distance=2.1..3] minecraft:poison 8 4
effect give @a[distance=3.1..4] minecraft:poison 7 4
effect give @a[distance=4.1..5] minecraft:poison 5 4
effect give @a[distance=5.1..6] minecraft:poison 3 4
effect give @a[distance=6.1..7] minecraft:poison 1 4

#explosion damage
execute as @a[distance=..1] run damage @s 10 minecraft:explosion
execute as @a[distance=1.1..2] run damage @s 8 minecraft:explosion
execute as @a[distance=2.1..3] run damage @s 6 minecraft:explosion
execute as @a[distance=3.1..4] run damage @s 4 minecraft:explosion
execute as @a[distance=4.1..5] run damage @s 2 minecraft:explosion

#heal undead
execute as @e[distance=0..2] unless entity @s[type=minecraft:player] run effect give @s minecraft:instant_damage 1 2
execute as @e[distance=2.1..4] unless entity @s[type=minecraft:player] run effect give @s minecraft:instant_damage 1 1

#knockback
summon breeze_wind_charge ~ ~ ~ {Motion:[0.0,-2.0,0.0]}

#play da noize
execute as @s run function bittersweet_functions:mob_adjustments/creeper/explosion_sound

#directed by michael bay
particle minecraft:explosion_emitter ~ ~1 ~ 0.5 0.5 0.5 0.1 1 normal
particle minecraft:entity_effect{color:[0.2, 1.0, 0.1, 1.0]} ~ ~ ~ 0.5 1 0.5 0.1 10 normal
kill @s
