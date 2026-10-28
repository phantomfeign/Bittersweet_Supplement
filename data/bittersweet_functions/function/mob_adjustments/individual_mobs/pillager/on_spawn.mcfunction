execute if predicate bittersweet_functions:chance/chance_5 unless entity @e[type=minecraft:pillager,tag=bswt.fireworkPillager,distance=..10] run tag @s add bswt.fireworkPillager
execute if entity @s[tag=bswt.fireworkPillager] run function bittersweet_functions:mob_adjustments/individual_mobs/pillager/firework_pillager
