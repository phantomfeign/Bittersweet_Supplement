execute unless entity @e[distance=..3,type=!minecraft:snow_golem,type=!minecraft:player] run return fail
execute as @e[distance=..3,type=!minecraft:snow_golem,type=!minecraft:player] run function bittersweet_functions:enchantments/frostbite/apply
particle minecraft:snowflake ~ ~2 ~ 3 2 3 0 10 normal