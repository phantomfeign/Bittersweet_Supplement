scoreboard players add @s HealthRecoverySeconds 1

execute if score @s HealthRecoverySeconds matches 60.. run scoreboard players add @s HealthRecoveryTime 1
execute if score @s HealthRecoverySeconds matches 60.. run scoreboard players remove @s HealthRecoverySeconds 60

title @p actionbar [{"text":"Recovery Period: ","bold":false,"color":"white"},\
{"score":{"name":"*","objective":"HealthRecoveryTime"}},\
{"text":"/15","bold":false,"color":"white"}]

execute if score @s HealthRecoveryTime matches 15.. run function bittersweet_functions:misc/health/increase_hp

