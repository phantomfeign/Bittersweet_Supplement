execute if block ~ ~ ~ minecraft:water run playsound block.fire.extinguish player @a ~ ~ ~ 3 1
scoreboard players set @s FireTimer 0
data modify entity @s HasVisualFire set value 0b
tag @s remove isOnFire