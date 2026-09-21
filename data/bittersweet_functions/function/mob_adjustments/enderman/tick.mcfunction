execute unless predicate bittersweet_functions:targets_player unless entity @e[distance=..8,tag=Cramped,tag=!PullTarget] run scoreboard players set @s PullTimer 0
execute unless predicate bittersweet_functions:targets_player unless entity @e[distance=..8,tag=Cramped,tag=!PullTarget] run return fail
execute as @s[predicate=bittersweet_functions:targets_player] run scoreboard players add @s PullTimer 1
execute if score @s PullTimer matches 2.. if entity @a[distance=..8,tag=Cramped,tag=!PullTarget] run function bittersweet_functions:mob_adjustments/enderman/player_tp_windup
execute if score @s PullTimer matches 2.. run scoreboard players set @s PullTimer 0
ride @s dismount