scoreboard players remove @s FireTimer 1
damage @s 1 minecraft:on_fire
execute if score @s FireTimer matches ..0 run data modify entity @s HasVisualFire set value 0b
execute if score @s FireTimer matches ..0 run tag @s remove isOnFire