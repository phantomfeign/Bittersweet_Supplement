execute store result score #damage GoldLogic run data get entity @s Item.components."minecraft:damage"
scoreboard players remove #damage GoldLogic 16
execute store result entity @s Item.components."minecraft:damage" int 1 run scoreboard players get #damage GoldLogic
