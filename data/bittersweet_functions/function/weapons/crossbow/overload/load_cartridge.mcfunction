clear @s minecraft:stray_spawn_egg 1
item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/set_ammo/4
playsound item.lodestone_compass.lock player @s ~ ~ ~ 1 0.5

execute if items entity @s inventory.* minecraft:arrow run return run give @s minecraft:arrow
execute if items entity @s hotbar.* minecraft:arrow run return run give @s minecraft:arrow
