advancement revoke @s only bittersweet_functions:food/drink_ichor
function bittersweet_functions:misc/health/fx/debuffs
function bittersweet_functions:misc/health/fx/ichor
execute store result score @s MaxHealth run attribute @s minecraft:max_health get 1.0
execute unless score @s MaxHealth matches 20.. run scoreboard players set @s MaxHealth 18
function bittersweet_functions:misc/health/fix_hp
function bittersweet_functions:misc/health/increase_hp