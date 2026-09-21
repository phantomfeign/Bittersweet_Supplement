item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
attribute @s minecraft:max_health base set 16
data merge entity @s {Health:16.0f}
execute if predicate bittersweet_functions:chance/chance_1/3 at @s run return run function bittersweet_functions:mob_adjustments/skeleton/variant
execute if items entity @s weapon.mainhand air run item replace entity @s weapon.mainhand with minecraft:bow
