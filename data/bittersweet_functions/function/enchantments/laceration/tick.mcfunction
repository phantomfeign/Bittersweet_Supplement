execute store result storage bswt.laceration Severity int 1 run scoreboard players get @s lacerationStacks
function bittersweet_functions:enchantments/laceration/damage with storage bswt.laceration

scoreboard players remove @s lacerationStacks 1
execute if score @s lacerationStacks matches ..0 run return run tag @s remove bswt.lacerated

