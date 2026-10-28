advancement revoke @s only bittersweet_functions:misc/kill

scoreboard players add @s Adrenaline 5
execute if score @s Rampage matches 1 run scoreboard players add @s Adrenaline 5

execute if score @s Rampage matches 1 run return run effect give @s minecraft:regeneration 4 0 true

execute store result score #contestedRoll Adrenaline run random value 0..100
execute if score @s Adrenaline <= #contestedRoll Adrenaline run return fail

effect give @s minecraft:regeneration 1 2 true
effect give @s minecraft:regeneration 4 0 true