execute if score @s cooldownMaceWind matches 4 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Lunge","color":"white"}

execute unless score @s cooldownMaceWind matches 4 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Lunge [","color":"gray"},{"score":{"name":"*","objective":"cooldownLunge"},"color":"gray"},{"text":"/3]","color":"gray"}]