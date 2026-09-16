execute if score #sleep SleepStreak matches 2.. run tellraw @a {"text":"The hordes weaken.","color":"#ffea4b"}
execute if score #sleep BloodMoonActive matches 1 run scoreboard players set #sleep SleepStreak 0
execute if score #sleep BloodMoonActive matches 1 run scoreboard players set #sleep BloodMoonActive 0
execute if score #sleep SleepStreak matches ..-1 run scoreboard players set #sleep SleepStreak 0
