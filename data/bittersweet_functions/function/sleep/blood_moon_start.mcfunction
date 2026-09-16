tellraw @a {"text":"A terrible night is upon us..","color":"#57588a"}
scoreboard players set #sleep BloodMoonActive 1
execute as @a run function bittersweet_functions:sleep/blood_moon_fx
function bittersweet_functions:mob_adjustments/phantom/summon