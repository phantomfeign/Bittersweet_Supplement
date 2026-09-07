execute as @s[predicate=bittersweet_functions:targets_player] run scoreboard players add @s PullTimer 1
execute if entity @a[distance=..8,tag=Cramped] run function bittersweet_functions:mob_adjustments/enderman/player_tp_windup
scoreboard players set @s PullTimer 0
ride @s dismount
