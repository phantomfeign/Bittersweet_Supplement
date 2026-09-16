execute if predicate bittersweet_functions:chance/chance_25 at @s run return run function bittersweet_functions:mob_adjustments/zombie/variant

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.mainhand with minecraft:air
attribute @s minecraft:attack_damage base set 4
attribute @s minecraft:knockback_resistance base set 0.5
attribute @s minecraft:follow_range base set 25
attribute @s minecraft:step_height base set 1