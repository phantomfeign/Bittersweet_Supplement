tag @e[type=minecraft:creeper] remove Watched

#check player sight lines from up to 24 blocks away
/execute as @a at @s anchored eyes positioned ^ ^ ^8 if entity @e[type=minecraft:creeper,distance=..2] run tag @e[type=minecraft:creeper,distance=..2] add Watched
execute as @a at @s anchored eyes positioned ^ ^ ^12 if entity @e[type=minecraft:creeper,distance=..2] run tag @e[type=minecraft:creeper,distance=..2] add Watched
execute as @a at @s anchored eyes positioned ^ ^ ^16 if entity @e[type=minecraft:creeper,distance=..2] run tag @e[type=minecraft:creeper,distance=..2] add Watched
execute as @a at @s anchored eyes positioned ^ ^ ^20 if entity @e[type=minecraft:creeper,distance=..2] run tag @e[type=minecraft:creeper,distance=..2] add Watched
execute as @a at @s anchored eyes positioned ^ ^ ^24 if entity @e[type=minecraft:creeper,distance=..2] run tag @e[type=minecraft:creeper,distance=..2] add Watched 

#frozen behavior
execute as @e[type=minecraft:creeper,tag=Watched] run effect give @s minecraft:slowness infinite 255 true
execute as @e[type=minecraft:creeper,tag=Watched] run rotate @s facing entity @p eyes

#unfrozen behavior
execute as @e[type=minecraft:creeper,tag=!Watched] run data merge entity @s {NoAI:0b}
execute as @e[type=minecraft:creeper,tag=!Watched] run effect clear @s minecraft:slowness

execute as @e[type=minecraft:creeper,tag=!Watched] at @s if entity @p[distance=..8] run attribute @s minecraft:movement_speed base set 0.35
execute as @e[type=minecraft:creeper,tag=!Watched] at @s unless entity @p[distance=..8] if entity @p[distance=..16] run attribute @s minecraft:movement_speed base set 0.45
execute as @e[type=minecraft:creeper,tag=!Watched] at @s unless entity @p[distance=..16] if entity @p[distance=..24] run attribute @s minecraft:movement_speed base set 0.55
execute as @e[type=minecraft:creeper,tag=!Watched] at @s unless entity @p[distance=..24] run attribute @s minecraft:movement_speed base set 0.65

