execute as @s[tag=!died_recently] if score @s Deaths matches 1.. run tag @s add died_recently
function bittersweet_functions:misc/health/fx/debuffs
execute as @s[tag=died_recently] run function bittersweet_functions:misc/health/decrease_hp
