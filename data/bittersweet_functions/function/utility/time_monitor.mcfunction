execute store result score #time Time run time query day
execute if score #time Time matches 39000 run function bittersweet_functions:sleep/night_start
execute if score #time Time matches 2999 run function bittersweet_functions:sleep/day_start
