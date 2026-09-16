execute if predicate bittersweet_functions:chance/chance_1/3 at @s run return run function bittersweet_functions:mob_adjustments/skeleton/variant

attribute @s minecraft:max_health base set 16
data merge entity @s {Health:16.0f}
execute as @s[tag=!AxeChecked] if predicate bittersweet_functions:axe_skeleton_chance run function bittersweet_functions:mob_adjustments/skeleton/axe_wielder
attribute @s[tag=AxeGiven] minecraft:attack_damage base set -4.0
tag @s[type=minecraft:skeleton] add AxeChecked
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:bow
