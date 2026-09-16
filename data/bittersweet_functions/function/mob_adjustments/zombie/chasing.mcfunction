#increases chase time, stopping at 1m
execute run scoreboard players add @s ZombieChaseTime 1

execute if score @s ZombieChaseTime matches 1 run attribute @s minecraft:movement_speed base set 0.245
execute if score @s ZombieChaseTime matches 2 run attribute @s minecraft:movement_speed base set 0.25
execute if score @s ZombieChaseTime matches 3 run attribute @s minecraft:movement_speed base set 0.255
execute if score @s ZombieChaseTime matches 4 run attribute @s minecraft:movement_speed base set 0.26
execute if score @s ZombieChaseTime matches 5 run attribute @s minecraft:movement_speed base set 0.265
execute if score @s ZombieChaseTime matches 6 run attribute @s minecraft:movement_speed base set 0.27
execute if score @s ZombieChaseTime matches 7 run attribute @s minecraft:movement_speed base set 0.275
execute if score @s ZombieChaseTime matches 8 run attribute @s minecraft:movement_speed base set 0.28
execute if score @s ZombieChaseTime matches 9 run attribute @s minecraft:movement_speed base set 0.285

execute if score @s ZombieChaseTime matches 20 run attribute @s minecraft:movement_speed base set 0.29

execute if score @s ZombieChaseTime matches 30 run attribute @s minecraft:movement_speed base set 0.30
execute if score @s ZombieChaseTime matches 31 run attribute @s minecraft:movement_speed base set 0.31
execute if score @s ZombieChaseTime matches 32 run attribute @s minecraft:movement_speed base set 0.32
execute if score @s ZombieChaseTime matches 33 run attribute @s minecraft:movement_speed base set 0.33
execute if score @s ZombieChaseTime matches 34 run attribute @s minecraft:movement_speed base set 0.34
execute if score @s ZombieChaseTime matches 35 run attribute @s minecraft:movement_speed base set 0.35

execute if score @s ZombieChaseTime matches 45 run attribute @s minecraft:movement_speed base set 0.40

execute if score @s ZombieChaseTime matches 60 run attribute @s minecraft:movement_speed base set 0.5
execute if score @s ZombieChaseTime matches 70 run attribute @s minecraft:movement_speed base set 0.6
