# get initial velocity ×1000
execute store result score @s ArrowX run data get entity @s Motion[0] 1000
execute store result score @s ArrowY run data get entity @s Motion[1] 1000
execute store result score @s ArrowZ run data get entity @s Motion[2] 1000

# 70% velocity
scoreboard players operation @s ArrowX *= #70 Percent
scoreboard players operation @s ArrowX /= #100 Percent

scoreboard players operation @s ArrowY *= #70 Percent
scoreboard players operation @s ArrowY /= #100 Percent

scoreboard players operation @s ArrowZ *= #70 Percent
scoreboard players operation @s ArrowZ /= #100 Percent

# write velocity back
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s ArrowX
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s ArrowY
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s ArrowZ
