# Gets all the data needed for the teleport at the spot
data modify storage take_me_home:spawnpoint X set from entity @s respawn.pos[0]
data modify storage take_me_home:spawnpoint Y set from entity @s respawn.pos[1]
data modify storage take_me_home:spawnpoint Z set from entity @s respawn.pos[2]
data modify storage take_me_home:spawnpoint Pitch set from entity @s respawn.pitch
data modify storage take_me_home:spawnpoint Yaw set from entity @s respawn.yaw
data modify storage take_me_home:spawnpoint Dimension set from entity @s respawn.dimension

function take_me_home:tp_to_home with storage take_me_home:spawnpoint