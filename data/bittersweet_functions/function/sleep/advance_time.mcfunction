function bittersweet_functions:sleep/messages
execute as @a[tag=sleeping] run damage @s 0.001
tag @a remove sleeping
scoreboard players set #sleep SleepProcessed 0
execute if score #sleep SleepStreak matches 5.. run return fail
scoreboard players add #sleep SleepStreak 1
scoreboard players set #sleep SleptToday 1
time set day
