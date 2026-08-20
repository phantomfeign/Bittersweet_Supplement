#disable Phantom AI while stunned
data modify entity @s NoAI set value 1b

#stop horizontal movement
data modify entity @s Motion[0] set value 0.0d
data modify entity @s Motion[2] set value 0.0d

#fall if therez air below
execute if block ~ ~-1 ~ minecraft:air run data modify entity @s Motion[1] set value -0.5d
execute if block ~ ~-1 ~ minecraft:cave_air run data modify entity @s Motion[1] set value -0.5d

#freeze once on solid ground
execute unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ minecraft:cave_air run data modify entity @s Motion set value [0.0d,0.0d,0.0d]