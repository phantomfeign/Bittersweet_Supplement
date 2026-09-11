scoreboard players set @s Deaths 0 
scoreboard players set @s HealthRecoveryTime 0 
execute as @s store result score @s MaxHealth run attribute @s minecraft:max_health get 1.0
tag @s remove died_recently

execute if score @s MaxHealth matches ..10 run return fail
scoreboard players remove @s MaxHealth 2
function bittersweet_functions:misc/health/fix_hp
execute at @p run function bittersweet_functions:misc/health/fx/decrease