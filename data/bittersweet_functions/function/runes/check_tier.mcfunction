execute align xz run tp @s ~0.5 ~0 ~0.5
data merge entity @s {NoGravity:1b,Motion:[0,0,0]}
execute if items entity @s contents copper_golem_spawn_egg run tag @s add rune_copper
execute if items entity @s contents iron_golem_spawn_egg run tag @s add rune_iron
execute if items entity @s contents ocelot_spawn_egg run tag @s add rune_gold
execute if items entity @s contents snow_golem_spawn_egg run tag @s add rune_diamond

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:copper_gear \
if block ~ ~-1 ~ minecraft:lodestone run function bittersweet_functions:runes/filter_copper

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:iron_gear \
if block ~ ~-1 ~ minecraft:lodestone run function bittersweet_functions:runes/filter_iron

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:gold_gear \
if block ~ ~-1 ~ minecraft:lodestone run function bittersweet_functions:runes/filter_gold

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:diamond_gear \
if block ~ ~-1 ~ minecraft:lodestone run function bittersweet_functions:runes/filter_diamond
