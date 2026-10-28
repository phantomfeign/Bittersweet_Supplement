#if not loaded but loaded is true set loaded to false
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo:0b,bswt.overloadLoaded:true}] \
run item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/loaded/false

#end and revoke advancement if loaded
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadLoaded:true}] \
run return run advancement revoke @s only bittersweet_functions:weapon/overload/use

#set loaded to false and revoke adv
item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/loaded/false
advancement revoke @s only bittersweet_functions:weapon/overload/use

#un-saddleify loaded arrows
execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",components:{"equippable":{slot:"saddle","equip_sound":"minecraft:intentionally_empty"}}}]] \
if predicate bittersweet_functions:enchantment/overload/crossbow run item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/load_with_arrow

#check if loaded with arrow
execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow"}]] \
if predicate bittersweet_functions:enchantment/overload/crossbow run return run function bittersweet_functions:weapons/crossbow/overload/load_crossbow/call

execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",components:{"minecraft:intangible_projectile":{}}}]] \
if predicate bittersweet_functions:enchantment/overload/crossbow run return run function bittersweet_functions:weapons/crossbow/overload/load_crossbow/call

