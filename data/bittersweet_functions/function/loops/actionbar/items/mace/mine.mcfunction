execute if score @s cooldownMaceMine matches 2 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Mine","color":"white"}

execute unless score @s cooldownMaceMine matches 2 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Mine [","color":"gray"},{"score":{"name":"*","objective":"cooldownMaceMine"},"color":"gray"},{"text":"/2]","color":"gray"}]
