execute if score @s cooldownFrostStomp matches 10 run data modify storage bswt:actionbar_now actionbar append value \
{"text":"Shatter","color":"white"}

execute unless score @s cooldownFrostStomp matches 10 run data modify storage bswt:actionbar_now actionbar append value \
[{"text":"Shatter [","color":"gray"},{"score":{"name":"*","objective":"cooldownFrostStomp"},"color":"gray"},{"text":"/10]","color":"gray"}]