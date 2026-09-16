#check spawned mobs that arent already checked, to see if they should spawn or be sent to the abyss
execute as @e[type=#bittersweet_functions:spawn_checks,tag=!SpawnChecked,tag=!SpawnBypass] run function bittersweet_functions:mob_adjustments/spawn_filter
execute as @e[type=#bittersweet_functions:spawn_checks,tag=!SpawnChecked,tag=SpawnBypass] run function bittersweet_functions:mob_adjustments/mob_changes
execute as @e[type=#bittersweet_functions:spawn_checks,tag=!SpawnChecked,tag=SpawnBypass] run tag @s add SpawnChecked

execute as @e[tag=SpawnForbidden] run function bittersweet_functions:mob_adjustments/delete

#repeat this function every 20 ticks
schedule function bittersweet_functions:main_loop 1s
execute at @a if score @p Hunger matches 10.. run effect give @p minecraft:hunger 1 255 true
execute at @a if score @p Hunger matches ..6 run effect give @p minecraft:saturation 1 1 true

#check for gold on top of gold equipment
execute as @e[type=item] at @s if items entity @s contents #bittersweet_functions:gold_gear run function bittersweet_functions:gold_repair/check_damage
execute as @e[type=item] at @s if items entity @s contents #bittersweet_functions:runes if block ~ ~-0.1 ~ minecraft:lodestone run function bittersweet_functions:runes/check_tier

#reset exp
execute unless stopwatch anvil_timer ..20 run tag @a[tag=UsingAnvil] remove UsingAnvil
execute as @a[tag=!UsingAnvil] at @s run experience set @s 0 levels
execute as @a[tag=!UsingAnvil] at @s run experience set @s 0 points
execute as @a[tag=UsingAnvil] at @s run experience set @s 54 levels

#dungeon spawners
execute as @a at @s run function bittersweet_functions:structure/mob_spawners/replace_spawners
execute as @e[type=minecraft:marker,tag=spawner_marker] at @s run function bittersweet_functions:structure/mob_spawners/marker/tick

#zombie 
execute as @e[type=minecraft:zombie] at @s if entity @p[distance=..30] if predicate bittersweet_functions:targets_player run function bittersweet_functions:mob_adjustments/zombie/chasing

#snow golem freeze
execute as @e[type=minecraft:snow_golem] at @s run function bittersweet_functions:mob_adjustments/snow_golem/freezing_aura

#elder guardian water breathing
execute as @e[type=elder_guardian] at @s run effect give @a[distance=..50] water_breathing 2 0 true
execute as @a run function bittersweet_functions:remove_temp_advancements

#spider fear
execute as @e[type=minecraft:armadillo,tag=light_block] at @s unless entity @e[type=minecraft:spider,distance=..10] run tp @s ~ -2112 ~
execute as @e[type=minecraft:armadillo,tag=light_block] at @s unless entity @e[type=minecraft:spider,distance=..10] run kill @s
execute as @a[tag=LitUp] at @s run function bittersweet_functions:mob_adjustments/spiders/spawn_armadillo

#cramped
execute as @a[tag=Cramped] at @s if block ~ ~2 ~ minecraft:air run tag @s remove Cramped
execute as @a[tag=!Cramped] at @s unless block ~ ~2 ~ minecraft:air run tag @s add Cramped

#stackz
execute as @a run function bittersweet_functions:food/stack_size_increases

#set bonuses
execute as @a run function bittersweet_functions:set_bonuses/check

#hp recovery
execute as @a at @s run execute if entity @s[scores={MaxHealth=..19}] run function bittersweet_functions:misc/health/hp_recovery

#fireball
execute as @e[type=fireball,tag=player_fireball] run function bittersweet_functions:weapons/fireball/tick