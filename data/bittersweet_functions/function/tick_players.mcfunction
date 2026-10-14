#SLEEP
tag @s add sleeping
execute as @s at @s positioned ~ ~0.200001 ~ if entity @s[dx=0] run tag @s remove sleeping
execute if entity @s[tag=sleeping] if score #sleep SleepAttempt matches 0 run schedule function bittersweet_functions:sleep/scheduled_time_advance 40t
execute if entity @s[tag=sleeping] run scoreboard players set #sleep SleepAttempt 1

#snowball
execute as @s[scores={threw_snowball=1..}] at @s run function bittersweet_functions:weapons/fireball/summon

#hefty
execute if predicate bittersweet_functions:enchantment/hefty run function bittersweet_functions:utility/swap_hands

#arrows
execute if predicate bittersweet_functions:needs_ghost_arrow unless items entity @s saddle minecraft:arrow \
run function bittersweet_functions:weapons/crossbow/ghost_arrow/check

execute unless predicate bittersweet_functions:needs_ghost_arrow if items entity @s saddle minecraft:arrow \
run function bittersweet_functions:weapons/crossbow/ghost_arrow/remove

#desperation
execute store success score @s HasDesperation run attribute @s minecraft:attack_speed modifier value get bswt:desperation 1
execute if score @s HasDesperation matches 1 unless predicate bittersweet_functions:enchantment/desperation run attribute @s minecraft:attack_speed modifier remove bswt:desperation
