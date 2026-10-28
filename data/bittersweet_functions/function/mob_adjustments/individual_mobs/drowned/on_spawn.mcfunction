function bittersweet_functions:mob_adjustments/equipment/clear_armor
item replace entity @s weapon.mainhand with minecraft:stone_sword
attribute @s minecraft:max_health base set 18
data merge entity @s {Health:18.0f}
attribute @s minecraft:follow_range base set 40
attribute @s minecraft:movement_speed base set 0.25
attribute @s minecraft:water_movement_efficiency base set 1
attribute @s minecraft:knockback_resistance base set 0.1
attribute @s minecraft:step_height base set 1.5
attribute @s minecraft:scale base set 0.8