function bittersweet_functions:misc/round_position
data merge entity @s {NoGravity:1b,Motion:[0,0,0]}

execute as @s at @s if items entity @s contents copper_golem_spawn_egg run tag @s add rune_copper
execute as @s at @s if items entity @s contents iron_golem_spawn_egg run tag @s add rune_iron
execute as @s at @s if items entity @s contents ocelot_spawn_egg run tag @s add rune_gold
execute as @s at @s if items entity @s contents snow_golem_spawn_egg run tag @s add rune_diamond

execute as @s at @s run function bittersweet_functions:runes/search_gear
