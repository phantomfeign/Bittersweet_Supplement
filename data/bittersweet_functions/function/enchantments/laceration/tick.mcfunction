scoreboard players add @s lacerationTimer 1
particle minecraft:dust{color:[0.8,0,0],scale:1} ~ ~1 ~ 0.5 0.5 0.5 0 3

execute if score @s lacerationTimer matches 5.. run function bittersweet_functions:enchantments/laceration/damage
execute if score @s lacerationTimer matches 5.. run scoreboard players set @s lacerationTimer 0
