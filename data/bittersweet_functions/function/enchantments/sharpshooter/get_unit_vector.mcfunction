execute store result entity @s Pos[0] double 0.00012207031 run scoreboard players get #motion.x bswt.projectileMath
execute store result entity @s Pos[1] double 0.00012207031 run scoreboard players get #motion.y bswt.projectileMath
execute store result entity @s Pos[2] double 0.00012207031 run scoreboard players get #motion.z bswt.projectileMath

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^0.5

execute store result score #motion.unit.x bswt.projectileMath run data get entity @s Pos[0] 256
execute store result score #motion.unit.y bswt.projectileMath run data get entity @s Pos[1] 256
execute store result score #motion.unit.z bswt.projectileMath run data get entity @s Pos[2] 256