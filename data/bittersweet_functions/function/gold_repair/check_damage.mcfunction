tag @s add this
function bittersweet_functions:misc/round_position
execute store result score #damage GoldLogic run data get entity @e[type=item,tag=this,limit=1] Item.components."minecraft:damage"
execute if score #damage GoldLogic matches 0 run return 0
execute at @s as @s run function bittersweet_functions:gold_repair/check_gold