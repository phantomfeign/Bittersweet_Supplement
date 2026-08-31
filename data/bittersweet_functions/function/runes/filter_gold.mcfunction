data modify entity @s Item.components."minecraft:enchantments" merge from entity @e\
[type=minecraft:item,tag=rune_gold,sort=nearest,limit=1] Item.components."minecraft:enchantments"
execute as @e[type=item,tag=rune_gold] at @s run function bittersweet_functions:runes/delete_rune
