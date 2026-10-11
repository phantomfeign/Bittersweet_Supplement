execute if score @s cooldownMaceWind matches 10 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Gust","color":"white"}

execute unless score @s cooldownMaceWind matches 10 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Gust [","color":"gray"},{"score":{"name":"*","objective":"cooldownMaceWind"},"color":"gray"},{"text":"/10]","color":"gray"}]