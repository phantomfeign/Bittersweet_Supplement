execute store result score #rune_count RuneCount run data get entity @s Item.count
scoreboard players remove #rune_count RuneCount 1
execute if score #rune_count RuneCount matches 1.. run execute store result entity @s Item.count int 1 run scoreboard players get #rune_count RuneCount
execute if score #rune_count RuneCount matches 1.. run tp @s @p
execute if score #rune_count RuneCount matches 0 run kill @s
