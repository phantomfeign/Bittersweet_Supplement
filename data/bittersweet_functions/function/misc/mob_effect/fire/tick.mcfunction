scoreboard players remove @s FireTimer 1
damage @s 1 minecraft:on_fire
execute if block ~ ~ ~ minecraft:water run function bittersweet_functions:misc/mob_effect/fire/end
execute if score @s FireTimer matches ..0 run function bittersweet_functions:misc/mob_effect/fire/end