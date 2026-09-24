function bittersweet_functions:remove_temp_advancements


#stackz
function bittersweet_functions:food/modify_items/check

#set bonuses
function bittersweet_functions:set_bonuses/check

#hp recovery
execute if entity @s[scores={MaxHealth=..19}] run function bittersweet_functions:misc/health/hp_recovery

#cramped
execute as @s[tag=Cramped] if block ~ ~2 ~ #bittersweet_functions:nonsolid run tag @s remove Cramped
execute as @s[tag=!Cramped] unless block ~ ~2 ~ #bittersweet_functions:nonsolid run tag @s add Cramped

