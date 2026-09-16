item replace entity @s armor.head with minecraft:leather_helmet
item replace entity @s armor.chest with minecraft:leather_chestplate
item replace entity @s armor.legs with minecraft:leather_leggings
item replace entity @s armor.feet with minecraft:leather_boots
item replace entity @s weapon.mainhand with minecraft:air

execute if predicate bittersweet_functions:chance/chance_40 run item replace entity @s armor.head with minecraft:iron_helmet
execute if predicate bittersweet_functions:chance/chance_40 run item replace entity @s armor.chest with minecraft:chainmail_chestplate
execute if predicate bittersweet_functions:chance/chance_40 run item replace entity @s armor.legs with minecraft:chainmail_leggings
execute if predicate bittersweet_functions:chance/chance_40 run item replace entity @s armor.feet with minecraft:chainmail_boots

attribute @s minecraft:max_health base set 28
data merge entity @s {Health:28.0f}
attribute @s minecraft:follow_range base set 50
attribute @s minecraft:scale base set 1.1
attribute @s minecraft:movement_speed base set 0.25
attribute @s minecraft:water_movement_efficiency base set 1
attribute @s minecraft:attack_damage base set 3
attribute @s minecraft:knockback_resistance base set 0.8
attribute @s minecraft:step_height base set 2