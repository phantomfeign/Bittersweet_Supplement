#check spawned mobs that arent already checked, to see if they should spawn or be sent to the abyss
execute as @e[type=!player,tag=!SpawnChecked,tag=!SpawnBypass] run function bittersweet_functions:mob_adjustments/spawn_filter
execute as @e[type=!player,tag=SpawnBypass] run function bittersweet_functions:mob_adjustments/mob_changes

#ZOMBIE BEHAVIOR
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

#HONEY
execute as @a[tag=HoneyHarvest] as @s run function bittersweet_functions:food/honey_bottle_replace
execute as @a[tag=WaterCollect] as @s run function bittersweet_functions:food/water_bottle_replace

#SLEEP
tag @a add sleeping
execute as @a at @s positioned ~ ~0.200001 ~ if entity @s[dx=0] run tag @s remove sleeping
execute if entity @a[limit=1] unless entity @a[limit=1,tag=!sleeping] if score #sleep SleepProcessed matches 0 run schedule function bittersweet_functions:sleep/scheduled_time_advance 40t
execute if entity @a[limit=1] unless entity @a[limit=1,tag=!sleeping] run scoreboard players set #sleep SleepProcessed 1

#ENDERMAN
execute as @e[type=minecraft:enderman,predicate=bittersweet_functions:targets_player] run scoreboard players add @s PullTimer 1
execute as @e[type=minecraft:enderman,scores={PullTimer=40..}] at @s if entity @a[distance=..8,tag=Cramped] run function bittersweet_functions:mob_adjustments/enderman/player_tp_windup
execute as @e[type=minecraft:enderman,scores={PullTimer=40..}] at @s run scoreboard players set @s PullTimer 0
execute as @e[type=minecraft:enderman] run ride @s dismount
execute as @a[tag=Cramped] at @s if block ~ ~2 ~ minecraft:air run tag @s remove Cramped
execute as @a[tag=!Cramped] at @s unless block ~ ~2 ~ minecraft:air run tag @s add Cramped

#BO'OL O WO'A
function bittersweet_functions:food/bottle_replace