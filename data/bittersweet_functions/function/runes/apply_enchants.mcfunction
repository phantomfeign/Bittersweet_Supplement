function bittersweet_functions:misc/round_position

execute as @e[type=item,tag=rune_copper_gear] at @s run function bittersweet_functions:runes/filter_copper
execute as @e[type=item,tag=rune_iron_gear] at @s run function bittersweet_functions:runes/filter_iron
execute as @e[type=item,tag=rune_gold_gear] at @s run function bittersweet_functions:runes/filter_gold
execute as @e[type=item,tag=rune_diamond_gear] at @s run function bittersweet_functions:runes/filter_diamond

execute as @p[tag=EnchantPlayer] run advancement grant @s only bittersweet_supplement:progression/ancient_art
execute as @a[tag=EnchantPlayer] run tag @s remove EnchantPlayer

tag @s add rune_enchanted
tag @s remove rune_copper_gear

execute as @s at @s run function bittersweet_functions:runes/float_start
