data modify entity @s Fire set value 0
execute if block ~ ~ ~ minecraft:water run return run function bittersweet_functions:misc/mob_effect/fire/end
execute as @s unless score @s FireTimer matches ..0 run scoreboard players add @s FireTimer 2
execute as @s unless score @s FireTimer matches 1.. run scoreboard players set @s FireTimer 8
tag @s add isOnFire
data modify entity @s HasVisualFire set value 1b

#frostbite
execute if score @s FrostbiteTimer matches 1.. run function bittersweet_functions:enchantments/frostbite/remove
