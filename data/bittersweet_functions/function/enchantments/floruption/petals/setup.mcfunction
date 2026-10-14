execute as @e[type=block_display,tag=bswt.verdumPetal] unless score @s VerdumPetalTimer matches 0.. run \
execute store result score @s VerdumPetalTimer run random value 8..12

execute store result entity @s Rotation[1] float 1 run random value -90..-60 float
execute store result entity @s Rotation[0] float 1 run random value -180..180 float
