execute if items entity @s weapon.offhand minecraft:stray_spawn_egg run return run function bittersweet_functions:weapons/crossbow/overload/load_cartridge
execute if items entity @s inventory.* minecraft:stray_spawn_egg run return run function bittersweet_functions:weapons/crossbow/overload/load_cartridge
execute if items entity @s hotbar.* minecraft:stray_spawn_egg run return run function bittersweet_functions:weapons/crossbow/overload/load_cartridge

execute store result score @s arrowCount run clear @s arrow 0
execute if score @s arrowCount matches 1 run clear @s arrow 1
execute if score @s arrowCount matches 1 run return run item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/set_ammo/1

execute store result score @s arrowCount run clear @s arrow 0
execute if score @s arrowCount matches 2 run clear @s arrow 2
execute if score @s arrowCount matches 2 run return run item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/set_ammo/2

execute store result score @s arrowCount run clear @s arrow 0
execute if score @s arrowCount matches 3 run clear @s arrow 3
execute if score @s arrowCount matches 3 run return run item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/set_ammo/3

execute store result score @s arrowCount run clear @s arrow 0
execute if score @s arrowCount matches 4.. run clear @s arrow 4
execute if score @s arrowCount matches 4.. run return run item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/set_ammo/4
