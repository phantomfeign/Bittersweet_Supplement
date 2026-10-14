schedule function bittersweet_functions:misc/campfire/check 10s
execute as @a positioned ~ ~ ~ if predicate bittersweet_functions:near_campfire run effect give @s minecraft:regeneration 10 0
execute as @a positioned ~ ~ ~ if predicate bittersweet_functions:near_campfire run function bittersweet_functions:enchantments/frostbite/remove