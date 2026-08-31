#special tool!
particle minecraft:glow ~ ~0.25 ~ 0 0 0 0.05 3
particle minecraft:firefly ~ ~0.25 ~ 0 1 0 1 3
playsound entity.experience_orb.pickup player @a ~ ~ ~ 3 1 1
execute as @a[tag=RepairPlayer] run advancement grant @s only bittersweet_supplement:progression/worth_its_weight

execute store result score #damage GoldLogic run data get entity @e[type=item,tag=this,limit=1] Item.components."minecraft:damage"
execute if score #damage GoldLogic matches 0 run return 0
scoreboard players remove #damage GoldLogic 100
execute if score #damage GoldLogic matches ..-1 run scoreboard players set #damage GoldLogic 0
execute store result entity @e[type=item,tag=this,limit=1] Item.components."minecraft:damage" int 1 run scoreboard players get #damage GoldLogic
execute store result score #gold_count GoldLogic run data get entity @s Item.count
scoreboard players remove #gold_count GoldLogic 1
execute if score #gold_count GoldLogic matches 1.. run execute store result entity @s Item.count int 1 run scoreboard players get #gold_count GoldLogic
execute if score #gold_count GoldLogic matches 0 run kill @s
