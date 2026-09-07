#ZOMBIE 
execute as @e[type=#minecraft:zombies] at @s if entity @p[distance=..30] if predicate bittersweet_functions:targets_player run function bittersweet_functions:mob_adjustments/zombie/chasing

#CREEPER 
execute as @e[type=minecraft:creeper] run function bittersweet_functions:mob_adjustments/creeper/tick
execute at @e[type=area_effect_cloud,tag=!creeper_aec_check] run function bittersweet_functions:mob_adjustments/creeper/aec_check

#PHANTOM 
execute as @e[type=minecraft:phantom,tag=NightTerror,limit=1] run function bittersweet_functions:mob_adjustments/phantom/bossbar_tick

#SLEEP
tag @a add sleeping
execute as @a at @s positioned ~ ~0.200001 ~ if entity @s[dx=0] run tag @s remove sleeping
execute if entity @a[limit=1,tag=sleeping] if score #sleep SleepProcessed matches 0 run schedule function bittersweet_functions:sleep/scheduled_time_advance 40t
execute if entity @a[limit=1,tag=sleeping] run scoreboard players set #sleep SleepProcessed 1

#ENDERMAN
execute as @e[type=minecraft:enderman] at @s run function bittersweet_functions:mob_adjustments/enderman/tick

#SPIDER
execute as @e[type=#bittersweet_functions:spiders] at @s as @a[distance=..25,limit=1] at @s run function bittersweet_functions:mob_adjustments/spiders/replace_light

