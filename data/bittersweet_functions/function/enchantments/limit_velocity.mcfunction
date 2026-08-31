# Get initial velocity ×1000
execute store result score @s ArrowXVelocity run data get entity @s Motion[0] 1000
execute store result score @s ArrowZVelocity run data get entity @s Motion[2] 1000

# 70% velocity
scoreboard players operation @s ArrowXVelocity *= #70 Percent
scoreboard players operation @s ArrowXVelocity /= #100 Percent

scoreboard players operation @s ArrowZVelocity *= #70 Percent
scoreboard players operation @s ArrowZVelocity /= #100 Percent

# Write velocity back
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s ArrowXVelocity
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s ArrowZVelocity