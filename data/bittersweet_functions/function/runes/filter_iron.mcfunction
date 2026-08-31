data modify entity @s Item.components."minecraft:enchantments" merge from entity @e\
[type=minecraft:item,tag=rune_iron,sort=nearest,limit=1] Item.components."minecraft:enchantments"
execute as @e[type=item,tag=rune_iron] at @s run function bittersweet_functions:runes/delete_rune
