$execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo:$(current)b}] run \
item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/load_with_arrow
$execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo:$(current)b}] run \
item modify entity @s weapon.mainhand bittersweet_functions:crossbow/overload/set_ammo/$(next)

