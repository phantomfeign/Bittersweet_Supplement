execute as @p[distance=..5] run tag @s add EnchantPlayer

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:copper_gear \
if block ~ ~-1 ~ minecraft:lodestone run tag @s add rune_copper_gear
execute as @e[type=item,tag=rune_copper_gear] at @s run function bittersweet_functions:runes/apply_enchants

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:iron_gear \
if block ~ ~-1 ~ minecraft:lodestone run tag @s add rune_iron_gear
execute as @e[type=item,tag=rune_iron_gear] at @s run function bittersweet_functions:runes/apply_enchants

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:gold_gear \
if block ~ ~-1 ~ minecraft:lodestone run tag @s add rune_gold_gear
execute as @e[type=item,tag=rune_gold_gear] at @s run function bittersweet_functions:runes/apply_enchants

execute as @e[type=item,tag=!rune_enchanted, distance=..1] at @s if items entity @s contents #bittersweet_functions:diamond_gear \
if block ~ ~-1 ~ minecraft:lodestone run tag @s add rune_diamond_gear
execute as @e[type=item,tag=rune_diamond_gear] at @s run function bittersweet_functions:runes/apply_enchants
