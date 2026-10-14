playsound minecraft:item.shield.block player @a ~ ~ ~ 3 1.3
advancement revoke @s only bittersweet_functions:weapon/floruption/block
tag @s remove bswt.floruption1
tag @s remove bswt.floruption2
tag @s remove bswt.floruption3
tag @s remove bswt.floruption4

execute unless score @s FloruptionStacks matches 5.. run scoreboard players add @s FloruptionStacks 1

execute if score @s FloruptionStacks matches 1 run tag @s add bswt.floruption1
execute if score @s FloruptionStacks matches 2 run tag @s add bswt.floruption2
execute if score @s FloruptionStacks matches 3 run tag @s add bswt.floruption3
execute if score @s FloruptionStacks matches 4.. run tag @s add bswt.floruption4

execute if score @s FloruptionStacks matches ..4 run function bittersweet_functions:enchantments/floruption/block_fx
