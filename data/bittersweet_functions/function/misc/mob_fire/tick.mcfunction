scoreboard players remove @s FireTimer 1
execute if score @s FireSeverity matches 1 run damage @s 1 minecraft:on_fire
execute if score @s FireSeverity matches 2 run damage @s 2 minecraft:on_fire
execute if score @s FireSeverity matches 3 run damage @s 3 minecraft:on_fire
execute if score @s FireTimer matches ..0 run data modify entity @s HasVisualFire set value 0b
execute if score @s FireTimer matches ..0 run tag @s remove isOnFire
execute if score @s FireTimer matches ..0 run scoreboard players set @s FireTimer 0