scoreboard players add @s ArrowAge 1

execute store result score #motion.x bswt.projectileMath run data get entity @s Motion[0] 8192
execute store result score #motion.y bswt.projectileMath run data get entity @s Motion[1] 8192
execute store result score #motion.z bswt.projectileMath run data get entity @s Motion[2] 8192

#Get unit vector
summon marker 0.0 0.0 0.0 {Tags:["bswt.UnitVector"]}
execute as @e[type=marker,tag=bswt.UnitVector] run function bittersweet_functions:enchantments/sharpshooter/get_unit_vector

execute if score @s ArrowAge matches 1 run function bittersweet_functions:enchantments/sharpshooter/get_speed

execute if score @s ArrowAge matches 2 positioned 0.0 0.0 0.0 facing entity \
@e[limit=1,type=marker,tag=bswt.UnitVector] feet positioned as @s run function bittersweet_functions:enchantments/sharpshooter/ring/1
execute if score @s ArrowAge matches 3 positioned 0.0 0.0 0.0 facing entity \
@e[limit=1,type=marker,tag=bswt.UnitVector] feet positioned as @s run function bittersweet_functions:enchantments/sharpshooter/ring/2
execute if score @s ArrowAge matches 3 run tag @s remove bswt.FastArrow
kill @e[type=marker,tag=bswt.UnitVector]