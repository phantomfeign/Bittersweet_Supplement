#increases chase time, stopping at 1m
execute run scoreboard players add @s ZombieChaseTime 1

#10 seconds to ramp up to player back-up speed
execute if score @s ZombieChaseTime matches 20..39 run attribute @s minecraft:movement_speed base set 0.245
execute if score @s ZombieChaseTime matches 40..59 run attribute @s minecraft:movement_speed base set 0.25
execute if score @s ZombieChaseTime matches 60..79 run attribute @s minecraft:movement_speed base set 0.255
execute if score @s ZombieChaseTime matches 80..99 run attribute @s minecraft:movement_speed base set 0.26
execute if score @s ZombieChaseTime matches 100..119 run attribute @s minecraft:movement_speed base set 0.265
execute if score @s ZombieChaseTime matches 120..139 run attribute @s minecraft:movement_speed base set 0.27
execute if score @s ZombieChaseTime matches 140..159 run attribute @s minecraft:movement_speed base set 0.275
execute if score @s ZombieChaseTime matches 160..179 run attribute @s minecraft:movement_speed base set 0.28
execute if score @s ZombieChaseTime matches 180..199 run attribute @s minecraft:movement_speed base set 0.290

#keep for 10s
execute if score @s ZombieChaseTime matches 200..399 run attribute @s minecraft:movement_speed base set 0.30

#5 seconds ramp up to be faster than player
execute if score @s ZombieChaseTime matches 400..419 run attribute @s minecraft:movement_speed base set 0.32
execute if score @s ZombieChaseTime matches 420..439 run attribute @s minecraft:movement_speed base set 0.34
execute if score @s ZombieChaseTime matches 440..459 run attribute @s minecraft:movement_speed base set 0.36
execute if score @s ZombieChaseTime matches 460..479 run attribute @s minecraft:movement_speed base set 0.38
execute if score @s ZombieChaseTime matches 480..499 run attribute @s minecraft:movement_speed base set 0.40

#keep for 10s
execute if score @s ZombieChaseTime matches 500..799 run attribute @s minecraft:movement_speed base set 0.40

#genuine menace
execute if score @s ZombieChaseTime matches 600..1000 run attribute @s minecraft:movement_speed base set 0.5
execute if score @s ZombieChaseTime matches 1000.. run attribute @s minecraft:movement_speed base set 0.6
