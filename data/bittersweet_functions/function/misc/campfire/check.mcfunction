schedule function bittersweet_functions:misc/campfire/check 10s
execute as @a[predicate=bittersweet_functions:near_campfire] positioned ~ ~ ~ run effect give @s minecraft:regeneration 10 0 true
execute as @a[predicate=bittersweet_functions:near_campfire] positioned ~ ~ ~ run function bittersweet_functions:enchantments/frostbite/remove