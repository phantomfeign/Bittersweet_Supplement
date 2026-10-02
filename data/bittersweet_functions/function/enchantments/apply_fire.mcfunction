execute if entity @p run damage @p 1 minecraft:on_fire
scoreboard players set @s FireSeverity 1
scoreboard players set @s FireTimer 5
data modify entity @s HasVisualFire set value 1b
tag @s add isOnFire