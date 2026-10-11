execute as @s unless score @s FireTimer matches ..0 run scoreboard players add @s FireTimer 1
execute as @s unless score @s FireTimer matches 1.. run scoreboard players set @s FireTimer 5
data modify entity @s Fire set value 0
tag @s add isOnFire
data modify entity @s HasVisualFire set value 1b
