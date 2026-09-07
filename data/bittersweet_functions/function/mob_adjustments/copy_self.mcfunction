execute unless entity @s[type=#bittersweet_functions:mundane_hostiles] run return fail
execute if entity @s[type=minecraft:zombie] run summon minecraft:zombie ~ ~ ~ {Tags:["ExtraSpawn"]}
execute if entity @s[type=minecraft:skeleton] run summon minecraft:skeleton ~ ~ ~ {Tags:["ExtraSpawn"]}
execute if entity @s[type=minecraft:creeper] run summon minecraft:creeper ~ ~ ~ {Tags:["ExtraSpawn"]}
execute if entity @s[type=minecraft:spider] run summon minecraft:spider ~ ~ ~ {Tags:["ExtraSpawn"]}