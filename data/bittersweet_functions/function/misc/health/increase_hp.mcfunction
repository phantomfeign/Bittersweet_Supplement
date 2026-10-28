scoreboard players set @s HealthRecoveryTime 0 
execute store result score @s MaxHealth run attribute @s minecraft:max_health get 1.0
execute if score @s MaxHealth matches 60.. run return fail
scoreboard players add @s MaxHealth 2
function bittersweet_functions:misc/health/fix_hp
execute at @s run function bittersweet_functions:misc/health/fx/increase