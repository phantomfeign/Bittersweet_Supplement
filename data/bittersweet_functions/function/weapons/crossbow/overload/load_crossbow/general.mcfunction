execute as @s[gamemode=creative] run return run item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/set_ammo/4

execute store result score @s arrowCount run clear @s arrow 0
execute if score @s arrowCount matches 4.. run return run function bittersweet_functions:weapons/crossbow/overload/load_crossbow/arrow {count:4}

execute store result score @s arrowCount run clear @s stray_spawn_egg 0
execute if score @s arrowCount matches 1.. run return run function bittersweet_functions:weapons/crossbow/overload/load_crossbow/cartridge

execute store result score @s arrowCount run clear @s arrow 0
execute if score @s arrowCount matches 3 run return run function bittersweet_functions:weapons/crossbow/overload/load_crossbow/arrow {count:3}
execute if score @s arrowCount matches 2 run return run function bittersweet_functions:weapons/crossbow/overload/load_crossbow/arrow {count:2}
execute if score @s arrowCount matches 1 run return run function bittersweet_functions:weapons/crossbow/overload/load_crossbow/arrow {count:1}
