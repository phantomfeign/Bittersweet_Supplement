data modify storage bswt:spawnpoint X set from entity @s respawn.pos[0]
data modify storage bswt:spawnpoint Y set from entity @s respawn.pos[1]
data modify storage bswt:spawnpoint Z set from entity @s respawn.pos[2]
data modify storage bswt:spawnpoint Pitch set from entity @s respawn.pitch
data modify storage bswt:spawnpoint Yaw set from entity @s respawn.yaw
data modify storage bswt:spawnpoint Dimension set from entity @s respawn.dimension

function bittersweet_functions:utility/tp_home/tp with storage bswt:spawnpoint
