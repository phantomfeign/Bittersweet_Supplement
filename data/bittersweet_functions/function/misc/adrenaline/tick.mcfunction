execute if score @s Adrenaline matches 100.. if score @s Rampage matches 0 run function bittersweet_functions:misc/adrenaline/rampage/start

execute if score @s Rampage matches 1 run return run function bittersweet_functions:misc/adrenaline/rampage/tick

execute if entity @e[type=#bittersweet_functions:mundane_hostiles,distance=..5] run return run scoreboard players add @s Adrenaline 1
execute if entity @e[type=#bittersweet_functions:mundane_hostiles,distance=..10] run return fail
execute if score @s Adrenaline matches ..10 run return run scoreboard players set @s Adrenaline 10
scoreboard players operation @s Adrenaline *= #90 Percent
scoreboard players operation @s Adrenaline /= #100 Percent