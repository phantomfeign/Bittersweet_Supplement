#increases chase time, stopping at 25
execute unless score @s ZombieChaseTime matches 580.. run scoreboard players add @s ZombieChaseTime 1

#5 seconds to ramp up to player back-up speed
execute if score @s ZombieChaseTime matches 20..39 run attribute @s minecraft:movement_speed base set 0.245
execute if score @s ZombieChaseTime matches 40..59 run attribute @s minecraft:movement_speed base set 0.260
execute if score @s ZombieChaseTime matches 60..79 run attribute @s minecraft:movement_speed base set 0.275
execute if score @s ZombieChaseTime matches 80..99 run attribute @s minecraft:movement_speed base set 0.290

#keep for 5s
execute if score @s ZombieChaseTime matches 100..199 run attribute @s minecraft:movement_speed base set 0.30

#5 seconds ramp up to be faster than player
execute if score @s ZombieChaseTime matches 200..219 run attribute @s minecraft:movement_speed base set 0.32
execute if score @s ZombieChaseTime matches 220..239 run attribute @s minecraft:movement_speed base set 0.34
execute if score @s ZombieChaseTime matches 240..259 run attribute @s minecraft:movement_speed base set 0.36
execute if score @s ZombieChaseTime matches 260..279 run attribute @s minecraft:movement_speed base set 0.38
execute if score @s ZombieChaseTime matches 280..299 run attribute @s minecraft:movement_speed base set 0.40

#keep for 10s
execute if score @s ZombieChaseTime matches 300..459 run attribute @s minecraft:movement_speed base set 0.40

#genuine menace
execute if score @s ZombieChaseTime matches 460..499 run attribute @s minecraft:movement_speed base set 0.45
execute if score @s ZombieChaseTime matches 500..539 run attribute @s minecraft:movement_speed base set 0.5
execute if score @s ZombieChaseTime matches 540..579 run attribute @s minecraft:movement_speed base set 0.55
execute if score @s ZombieChaseTime matches 580..599 run attribute @s minecraft:movement_speed base set 0.6
