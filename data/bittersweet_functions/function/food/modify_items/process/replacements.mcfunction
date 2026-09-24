execute if items entity @s hotbar.* minecraft:tropical_fish run give @s minecraft:tropical_fish_spawn_egg\
[minecraft:item_name="Tropical Fish",minecraft:item_model="minecraft:tropical_fish"]
execute if items entity @s inventory.* minecraft:tropical_fish run give @s minecraft:tropical_fish_spawn_egg\
[minecraft:item_name="Tropical Fish",minecraft:item_model="minecraft:tropical_fish"]

execute if items entity @s hotbar.* minecraft:tropical_fish run clear @s minecraft:tropical_fish
execute if items entity @s inventory.* minecraft:tropical_fish run clear @s minecraft:tropical_fish

execute if items entity @s inventory.* #bittersweet_functions:needs_replacement_adjustment run function bittersweet_functions:food/modify_items/check
execute if items entity @s hotbar.* #bittersweet_functions:needs_replacement_adjustment run function bittersweet_functions:food/modify_items/check