#kill with no loot
data modify entity @s DeathLootTable set value "bittersweet_functions:empty"
data merge entity @s {NoAI:1b,Silent:1b}
tp @s ~ -100 ~
execute as @s[type=!minecraft:slime] run kill @s

execute as @s[type=minecraft:slime] run tp @s ~ -1000 ~
execute as @s[type=minecraft:slime] run kill @s

