#repeat this function every 20 ticks
schedule function bittersweet_functions:main_loop 20t
execute at @a if score @p Hunger matches 10.. run effect give @p minecraft:hunger 1 255 true
execute at @a if score @p Hunger matches ..6 run effect give @p minecraft:saturation 1 1 true

#check for gold on top of gold equipment
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_helmet run function bittersweet_functions:gold_repair/check_gold
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_chestplate run function bittersweet_functions:gold_repair/check_gold
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_leggings run function bittersweet_functions:gold_repair/check_gold
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_boots run function bittersweet_functions:gold_repair/check_gold

execute as @e[type=item] at @s if items entity @s contents minecraft:golden_sword run function bittersweet_functions:gold_repair/check_gold
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_pickaxe run function bittersweet_functions:gold_repair/check_gold
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_axe run function bittersweet_functions:gold_repair/check_gold
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_shovel run function bittersweet_functions:gold_repair/check_gold
execute as @e[type=item] at @s if items entity @s contents minecraft:golden_hoe run function bittersweet_functions:gold_repair/check_gold

#night terror weather effects
execute if entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] run weather thunder
execute if entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] run time set minecraft:midnight
execute if entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] run scoreboard players set #NightTerror NightTerrorAlive 1

#night terror has died
execute if score #NightTerror NightTerrorAlive matches 1 unless entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] run time set day
execute if score #NightTerror NightTerrorAlive matches 1 unless entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] run weather clear
execute if score #NightTerror NightTerrorAlive matches 1 unless entity @e[type=minecraft:phantom,tag=NightTerror,limit=1] run scoreboard players set #NightTerror NightTerrorAlive 0

#elder guardian water breathing
execute as @e[type=elder_guardian] at @s run effect give @a[distance=..50] water_breathing 2 0 true

execute as @a run function bittersweet_functions:remove_temp_advancements
