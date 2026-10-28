execute if score @s FloruptionStacks matches 4.. run return run data modify storage bswt:actionbar_now actionbar append value \
{"text":" Floruption","color":"white"}

execute unless score @s FloruptionStacks matches 4 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":" Floruption [","color":"gray"},{"score":{"name":"*","objective":"FloruptionStacks"},"color":"gray"},{"text":"/4]","color":"gray"}]