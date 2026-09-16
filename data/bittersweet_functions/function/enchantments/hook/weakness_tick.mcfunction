scoreboard players remove @s weaknessTimer 1
execute if score @s weaknessTimer matches ..0 run effect clear @s minecraft:weakness
execute if score @s weaknessTimer matches ..0 run tag @s remove cannotAttack