advancement revoke @s only bittersweet_functions:misc/hurt_by_mob
scoreboard players add @s Adrenaline 2
execute if score @s Rampage matches 1 run scoreboard players add @s Adrenaline 1
execute store result score #contestedRoll Adrenaline run random value 0..1000
execute if score @s Adrenaline <= #contestedRoll Adrenaline run effect give @s minecraft:regeneration 1 2 true
