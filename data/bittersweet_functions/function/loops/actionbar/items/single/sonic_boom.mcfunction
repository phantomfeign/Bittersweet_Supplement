execute if score @s cooldownSonicAmplifier matches 10 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Sonic Boom","color":"white"}

execute unless score @s cooldownSonicAmplifier matches 10 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Sonic Boom [","color":"gray"},{"score":{"name":"*","objective":"cooldownSonicAmplifier"},"color":"gray"},{"text":"/10]","color":"gray"}]