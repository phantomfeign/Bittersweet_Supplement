execute if score @s cooldownTomes matches 5 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Tomes","color":"white"}

execute unless score @s cooldownTomes matches 5 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Tomes [","color":"gray"},{"score":{"name":"*","objective":"cooldownTomes"},"color":"gray"},{"text":"/5]","color":"gray"}]