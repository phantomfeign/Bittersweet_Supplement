tellraw @a {"text":"A Blood Moon Rises..","color":"#ff2727"}
scoreboard players set #sleep BloodMoonActive 1
execute as @a run function bittersweet_functions:sleep/blood_moon_sounds
