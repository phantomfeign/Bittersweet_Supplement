scoreboard players add @s RuneFloat 1
tp @s ~ ~0.02 ~

function bittersweet_functions:misc/round_position

execute at @s unless block ~ ~1 ~ air run scoreboard players set @s RuneFloat 40

execute if score @s RuneFloat matches 60 run function bittersweet_functions:runes/float_end

particle minecraft:enchant ~ ~1 ~ 0 0 0 8 1
