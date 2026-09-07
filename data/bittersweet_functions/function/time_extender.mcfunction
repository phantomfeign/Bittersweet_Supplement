time add 1
execute store result score #time Time run time query day
execute if score #time Time matches 13000 run function bittersweet_functions:sleep/night_start
execute if score #time Time matches 0 run function bittersweet_functions:sleep/day_start
schedule function bittersweet_functions:time_extender 2t