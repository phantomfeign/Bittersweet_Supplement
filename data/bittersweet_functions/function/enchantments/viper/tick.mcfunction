scoreboard players remove @s ViperTimer 1
tag @s add bswt.viperImmune
execute as @e[type=!#bittersweet_functions:nonliving_entity,tag=!bswt.viperImmune,distance=..2] run damage @s 6 minecraft:magic
tag @s remove bswt.viperImmune
particle minecraft:tinted_leaves{color:[0.604, 0.702, 0.259, 1.0]} ~ ~ ~ 1 1 1 0 3
particle minecraft:instant_effect{color:[0.5, 0.6, 0.2]} ~ ~ ~ 0 0 0 0 0
playsound block.azalea_leaves.break player @a ~ ~ ~ 4 1
