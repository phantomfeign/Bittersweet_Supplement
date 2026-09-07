execute unless entity @e[distance=..3,type=!minecraft:snow_golem,type=!minecraft:player] run return fail
effect give @e[distance=..3,type=!minecraft:snow_golem,type=!minecraft:player] minecraft:slowness 1 1 true
execute as @e[distance=..3,type=!minecraft:snow_golem,type=!minecraft:player] run damage @s 1 minecraft:freeze
particle minecraft:snowflake ~ ~2 ~ 3 2 3 0 10 normal