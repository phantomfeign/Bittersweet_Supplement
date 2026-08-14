#check spawned mobs that arent already checked, to see if they should spawn or be sent to the abyss
execute as @e[type=#bittersweet_functions:mundane_hostiles,tag=!SpawnChecked,tag=!SpawnBypass] run function bittersweet_functions:mob_adjustments/spawn_filter
execute as @e[type=#bittersweet_functions:mundane_hostiles,tag=SpawnBypass] run function bittersweet_functions:mob_adjustments/mob_changes

#ZOMBIE BEHAVIOR
#zombies with a player target
execute as @e[type=#minecraft:zombies,predicate=bittersweet_functions:targets_player] at @s run function bittersweet_functions:mob_adjustments/zombie/chasing

#CREEPER BEHAVIOR
execute as @e[type=minecraft:creeper] run function bittersweet_functions:mob_adjustments/creeper/tick
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:99b}]}}] at @s run function bittersweet_functions:mob_adjustments/creeper/explode

#PHANTOM BEHAVIOR
#Night Terror's bossbar
execute as @e[type=minecraft:phantom,tag=NightTerror,limit=1] store result bossbar bittersweet:night_terror value run data get entity @s Health 1
execute if entity @e[type=minecraft:phantom,tag=NightTerror] run bossbar set bittersweet:night_terror players @a
execute if entity @e[type=minecraft:phantom,tag=NightTerror] run bossbar set bittersweet:night_terror visible true
execute unless entity @e[type=minecraft:phantom,tag=NightTerror] run bossbar set bittersweet:night_terror visible false
execute as @e[type=minecraft:phantom,tag=NightTerror,limit=1] run function bittersweet_functions:mob_adjustments/phantom/attack/phantomtick
