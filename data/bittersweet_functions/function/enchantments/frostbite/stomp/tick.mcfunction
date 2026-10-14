execute unless entity @e[tag=bswt.iceStatue,distance=..12] run return run kill @s

execute if entity @e[tag=bswt.iceStatue,distance=..2] run execute as @e[limit=1,sort=nearest,tag=bswt.iceStatue] run damage @s 1

execute facing entity @e[tag=bswt.iceStatue,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.5

particle minecraft:dust{color:[0.5,1,1],scale:1} ~ ~ ~ 0.1 0.1 0.1 0 2
particle minecraft:snowflake ~ ~ ~ 0.1 0.1 0.1 0 3
