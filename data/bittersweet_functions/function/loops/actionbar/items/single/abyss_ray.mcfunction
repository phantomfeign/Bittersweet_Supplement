execute if score @s cooldownAbyssRay matches 5 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Abyss Ray","color":"white"}

execute unless score @s cooldownAbyssRay matches 5 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Abyss Ray [","color":"gray"},{"score":{"name":"*","objective":"cooldownAbyssRay"},"color":"gray"},{"text":"/5]","color":"gray"}]