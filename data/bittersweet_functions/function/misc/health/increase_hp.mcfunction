scoreboard players set @s HealthRecoveryTime 0 

execute if score @s MaxHealth matches 60.. run return fail
scoreboard players add @s MaxHealth 2
function bittersweet_functions:misc/health/fix_hp
execute at @p run function bittersweet_functions:misc/health/fx/increase