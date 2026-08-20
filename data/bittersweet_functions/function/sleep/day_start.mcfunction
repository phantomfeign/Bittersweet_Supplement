execute if score #sleep BloodMoonActive matches 1 run scoreboard players set #sleep SleepStreak 0
execute if score #sleep BloodMoonActive matches 1 run scoreboard players set #sleep BloodMoonActive 0
execute if score #sleep SleptToday matches 0 if score #sleep SleepStreak matches 1.. unless score #sleep BloodMoonActive matches 1 run tellraw @a {"text":"The hordes weaken.","color":"#ffea4b"}
execute if score #sleep BloodMoonActive matches 1 run tellraw @a {"text":"The light cleanses all sin.","color":"#ffe72d"}
execute if score #sleep SleptToday matches 0 run scoreboard players remove #sleep SleepStreak 1
execute if score #sleep SleepStreak matches ..-1 run scoreboard players set #sleep SleepStreak 0
scoreboard players set #sleep SleptToday 0