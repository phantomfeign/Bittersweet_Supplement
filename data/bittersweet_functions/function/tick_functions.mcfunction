#check spawned mobs that arent already checked, to see if they should spawn or be sent to the abyss
execute as @e[type=#bittersweet_functions:mundane_hostiles,tag=!SpawnChecked,tag=!SpawnBypass] run function bittersweet_functions:mob_adjustments/spawn_filter
execute as @e[type=#bittersweet_functions:mundane_hostiles,tag=SpawnBypass] run function bittersweet_functions:mob_adjustments/mob_changes

#ZOMBIE BEHAVIOR
#zombies with a player target
execute as @e[type=#minecraft:zombies,predicate=bittersweet_functions:targets_player] at @s run function bittersweet_functions:mob_adjustments/zombie/chasing

#CREEPER BEHAVIOR
#remove previous watch tags
tag @e[type=minecraft:creeper] remove Watched

#check player sight lines from up to 24 blocks away
execute as @a at @s anchored eyes positioned ^ ^ ^4 if entity @e[type=minecraft:creeper,distance=..2] run tag @e[type=minecraft:creeper,distance=..2] add Watched
execute as @a at @s anchored eyes positioned ^ ^ ^8 if entity @e[type=minecraft:creeper,distance=..2] run tag @e[type=minecraft:creeper,distance=..2] add Watched
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

#PHANTOM BEHAVIOR
#Night Terror's bossbar
execute as @e[type=minecraft:phantom,tag=NightTerror,limit=1] store result bossbar bittersweet:night_terror value run data get entity @s Health 1
execute if entity @e[type=minecraft:phantom,tag=NightTerror] run bossbar set bittersweet:night_terror players @a
execute if entity @e[type=minecraft:phantom,tag=NightTerror] run bossbar set bittersweet:night_terror visible true
execute unless entity @e[type=minecraft:phantom,tag=NightTerror] run bossbar set bittersweet:night_terror visible false
execute as @e[type=minecraft:phantom,tag=NightTerror,limit=1] run function bittersweet_functions:mob_adjustments/phantom/attack/phantomtick
