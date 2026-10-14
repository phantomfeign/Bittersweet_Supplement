execute unless entity @e[type=!#bittersweet_functions:nonliving_entity,type=!#bittersweet_functions:is_passive,\
tag=!bswt.floruptionCaster,distance=..10] run return run scoreboard players set @s VerdumPetalTimer 0
execute unless entity @e[type=block_display,tag=bswt.verdumPetal,distance=..5,scores={VerdumPetalTimer=0}] run scoreboard players remove @s VerdumPetalTimer 1

tp @s ^ ^ ^0.5
