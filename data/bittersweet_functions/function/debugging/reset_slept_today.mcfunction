scoreboard players set #sleep SleptToday 0
scoreboard players set @a SleptToday 0
scoreboard players set #sleep SleepProcessed 0
scoreboard players set @a SleepProcessed 0
time set night
function bittersweet_functions:sleep/night_start
tellraw @s [{"text":"SleepStreak: "},{"score":{"name":"#sleep","objective":"SleepStreak"}}]