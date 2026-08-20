execute if score #sleep SleepStreak matches 0 run tellraw @a {"text":"You feel well rested.","color":"#f6f6ff"}
execute if score #sleep SleepStreak matches 1 run tellraw @a {"text":"You feel.. rested..","color":"#e2daff"}
execute if score #sleep SleepStreak matches 2 run tellraw @a {"text":"A chill runs down your spine.","color":"#D8C7FA"}
execute if score #sleep SleepStreak matches 3 run tellraw @a {"text":"The hordes grow in number.","color":"#C2A7F6"}
execute if score #sleep SleepStreak matches 4 run tellraw @a {"text":"You feel restless.","color":"#B999F4"}
execute if score #sleep SleepStreak matches 5.. run tellraw @a {"text":"You cannot sleep now, there are monsters to slay.","color":"#AF8CF2"}
