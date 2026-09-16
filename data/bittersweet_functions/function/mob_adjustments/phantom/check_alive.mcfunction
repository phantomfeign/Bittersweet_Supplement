#night terror weather effects
weather thunder
time set minecraft:midnight
execute if entity @e[type=minecraft:phantom,tag=NightTerror] run schedule function bittersweet_functions:mob_adjustments/phantom/check_alive 80t
execute if entity @e[type=minecraft:phantom,tag=NightTerror] run return fail

#night terror has died
time set day
function bittersweet_functions:sleep/day_start
tellraw @a {"text":"The light cleanses all.","color":"#ffea4b"}
weather clear
bossbar remove bittersweet:night_terror
