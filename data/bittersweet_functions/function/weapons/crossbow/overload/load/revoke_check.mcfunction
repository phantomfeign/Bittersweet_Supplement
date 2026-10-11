#say revoke 1
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadLoaded:true}] \
run return run advancement revoke @s only bittersweet_functions:weapon/overload/use

item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/loaded/false

execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow"}]] \
if predicate bittersweet_functions:enchantment/overload run function bittersweet_functions:weapons/crossbow/overload/load
execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",components:{"equippable":{slot:"saddle"}}}]] \
if predicate bittersweet_functions:enchantment/overload run function bittersweet_functions:weapons/crossbow/overload/load

execute as @s run advancement revoke @s only bittersweet_functions:weapon/overload/use
#say revoke 2
