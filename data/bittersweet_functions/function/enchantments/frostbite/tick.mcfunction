function bittersweet_functions:enchantments/frostbite/damage
scoreboard players remove @s FrostbiteTimer 1
execute if score @s FrostbiteTimer matches ..0 run function bittersweet_functions:enchantments/frostbite/remove
