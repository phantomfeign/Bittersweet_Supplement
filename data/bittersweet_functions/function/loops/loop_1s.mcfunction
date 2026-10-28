#repeat this function every sec
schedule function bittersweet_functions:loops/loop_1s 1s
execute as @a at @s run function bittersweet_functions:loops/loop_1s_player

#check spawned mobs that arent already checked, to see if they should spawn or be sent to the abyss
execute as @e[type=#bittersweet_functions:spawn_checks,tag=!bswt.spawnChecked,tag=!SpawnBypass] run function bittersweet_functions:mob_adjustments/spawn_filter
execute as @e[type=#bittersweet_functions:spawn_checks,tag=!bswt.spawnChecked,tag=SpawnBypass] run function bittersweet_functions:mob_adjustments/mob_changes
execute as @e[tag=bswt.spawnForbidden] run function bittersweet_functions:mob_adjustments/delete

#check for gold on top of gold equipment
execute as @e[type=item] at @s if items entity @s contents #bittersweet_functions:gold_gear run function bittersweet_functions:gold_repair/check_damage


#dungeon spawners
execute as @e[type=minecraft:marker,tag=spawner_marker] at @s run function bittersweet_functions:structure/mob_spawners/marker/tick

#zombie 
execute as @e[type=minecraft:zombie] at @s if entity @a[distance=..30] if predicate bittersweet_functions:targets_player run function bittersweet_functions:mob_adjustments/individual_mobs/zombie/chasing

#snow golem freeze
execute as @e[type=minecraft:snow_golem] at @s run function bittersweet_functions:mob_adjustments/individual_mobs/snow_golem/freezing_aura

#elder guardian water breathing
execute as @e[type=elder_guardian] at @s run effect give @a[distance=..50] water_breathing 2 0 true

#spider fear
execute as @e[type=minecraft:armadillo,tag=light_block] at @s unless entity @e[type=minecraft:spider,distance=..10] run tp @s ~ -2112 ~
execute as @e[type=minecraft:armadillo,tag=light_block] at @s unless entity @e[type=minecraft:spider,distance=..10] run kill @s
execute as @a[tag=LitUp] at @s run function bittersweet_functions:mob_adjustments/individual_mobs/spiders/spawn_armadillo

#ENDERMAN
execute as @e[type=minecraft:enderman] at @s run function bittersweet_functions:mob_adjustments/individual_mobs/enderman/tick

#fireball
execute as @e[tag=bswt.timed_projectile] run function bittersweet_functions:projectile_tick

#fire debuff
execute as @e[type=!#minecraft:arrows,type=!minecraft:small_fireball,type=!minecraft:fireball,tag=isOnFire] if score @s FireTimer matches 1.. run function bittersweet_functions:misc/mob_effect/fire/tick

#laceration
execute as @e[tag=bswt.lacerated] at @s run function bittersweet_functions:enchantments/laceration/tick

#frostbite
execute as @e[tag=bswt.iceStatue] if score @s IceStatueTimer matches ..0 run damage @s 1 minecraft:freeze
execute as @e[tag=bswt.iceStatue] if score @s IceStatueTimer matches 1.. run scoreboard players remove @s IceStatueTimer 1