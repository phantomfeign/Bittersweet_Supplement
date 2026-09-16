execute if score #sleep SleepStreak matches 0 run tellraw @a {"text":"You feel well rested.","color":"#f6f6ff"}
execute if score #sleep SleepStreak matches 1 run tellraw @a {"text":"You feel.. rested..","color":"#c6b4cb"}
execute if score #sleep SleepStreak matches 2 run tellraw @a {"text":"You feel tired.","color":"#aa96b0"}
execute if score #sleep SleepStreak matches 3 run tellraw @a {"text":"You feel restless.","color":"#8f7da2"}
execute if score #sleep SleepStreak matches 4 run tellraw @a {"text":"You feel sick.","color":"#736b95"}
execute if score #sleep SleepStreak matches 5.. run tellraw @a {"text":"You cannot sleep now. You are having Night Terrors.","color":"#57588a"}
