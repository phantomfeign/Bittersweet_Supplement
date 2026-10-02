function bittersweet_functions:remove_temp_advancements

#stackz
function bittersweet_functions:food/modify_items/check

#hp recovery
execute if entity @s[scores={MaxHealth=..19}] run function bittersweet_functions:misc/health/hp_recovery

#cramped
execute as @s[tag=Cramped] if block ~ ~2 ~ #bittersweet_functions:nonsolid run tag @s remove Cramped
execute as @s[tag=!Cramped] unless block ~ ~2 ~ #bittersweet_functions:nonsolid run tag @s add Cramped

#dash
scoreboard players add @s dashingDashTimer 1
scoreboard players add @s lungeTimer 1
execute if score @s lungeTimer matches 3 run tag @s add canLunge
execute if score @s lungeTimer matches 3 run playsound item.spear.attack player @s ~ ~ ~ 1 2
execute if score @s dashingDashTimer matches 2 run playsound minecraft:block.chiseled_bookshelf.insert.enchanted player @s ~ ~ ~ 1 1
