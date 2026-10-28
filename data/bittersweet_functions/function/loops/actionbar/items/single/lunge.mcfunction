execute if score @s cooldownLunge matches 3 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Lunge","color":"white"}

execute unless score @s cooldownLunge matches 3 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Lunge [","color":"gray"},{"score":{"name":"*","objective":"cooldownLunge"},"color":"gray"},{"text":"/3]","color":"gray"}]