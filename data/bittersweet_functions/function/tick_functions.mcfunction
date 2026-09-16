#SILVERFISH
execute as @e[type=minecraft:silverfish,tag=!SpawnChecked,tag=!SpawnBypass] run function bittersweet_functions:mob_adjustments/spawn_filter

#CREEPER 
execute as @e[type=minecraft:creeper] run function bittersweet_functions:mob_adjustments/creeper/tick
execute at @e[type=area_effect_cloud,tag=!creeper_aec_check] run function bittersweet_functions:mob_adjustments/creeper/aec_check

#PHANTOM 
execute as @e[type=minecraft:phantom,tag=NightTerror,limit=1] run function bittersweet_functions:mob_adjustments/phantom/update_boss_bar

#SLEEP
tag @a add sleeping
execute as @a at @s positioned ~ ~0.200001 ~ if entity @s[dx=0] run tag @s remove sleeping
execute if entity @a[tag=sleeping] if score #sleep SleepAttempt matches 0 run schedule function bittersweet_functions:sleep/scheduled_time_advance 40t
execute if entity @a[tag=sleeping] run scoreboard players set #sleep SleepAttempt 1

#ENDERMAN
execute as @e[type=minecraft:enderman] at @s run function bittersweet_functions:mob_adjustments/enderman/tick

#SPIDER
execute as @e[type=#bittersweet_functions:spiders] at @s as @a[distance=..25,limit=1] at @s run function bittersweet_functions:mob_adjustments/spiders/replace_light

#PLAYER DEATH
execute as @e[type=player,tag=!died_recently,scores={Deaths=1..}] run function bittersweet_functions:misc/health/death

#HOOK TICK
execute as @e[tag=cannotAttack] run function bittersweet_functions:enchantments/hook/weakness_tick