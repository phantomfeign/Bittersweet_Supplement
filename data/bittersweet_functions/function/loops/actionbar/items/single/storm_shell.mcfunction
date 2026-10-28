execute if score @s cooldownStormShell matches 10.. run return run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Storm Shell","color":"white"}

execute unless score @s cooldownStormShell matches 10 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Storm Shell [","color":"gray"},{"score":{"name":"*","objective":"cooldownStormShell"},"color":"gray"},{"text":"/10]","color":"gray"}]