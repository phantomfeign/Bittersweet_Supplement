data modify storage runes:temp current set value {}
execute as @e[type=item,tag=rune_copper,sort=nearest,limit=1,distance=..1] at @s run data modify storage runes:temp current.enchantments set from entity @s Item.components."minecraft:enchantments"
function bittersweet_functions:runes/cleanup
execute as @e[type=item,tag=rune_copper,sort=nearest,limit=1,distance=..1] at @s run function bittersweet_functions:runes/delete_rune
