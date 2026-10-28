execute as @e[type=minecraft:wandering_trader] run return run function bittersweet_functions:mob_adjustments/individual_mobs/wandering_trader/depart
execute if score #sleep SleepStreak matches 5 run function bittersweet_functions:sleep/blood_moon_start
